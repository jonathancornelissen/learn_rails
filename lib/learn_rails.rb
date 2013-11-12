require "learn_rails/version"
require "learn_rails/associations"
require "learn_rails/accessors"
require "active_support/core_ext/string"

module LearnRails
  def self.analyze(*magic)
    if accessor? magic
      LearnRails::Accessors.code_for magic
    elsif association? magic
      association_type  = magic[1]
      LearnRails::Associations.send(association_type, magic)
    else
      error_message
    end
  end

  private

  def self.accessor? magic
    potential_attr = magic[0]
    ['attr_reader', 'attr_writer', 'attr_accessor'].include? potential_attr
  end

  def self.association? magic
    potential_association = magic[1]
    ['belongs_to', 'has_one', 'has_many'].include? potential_association
  end

  def self.error_message
    <<-error.strip_heredoc
      No ruby code available.
      See http://www.github.com/pjc/learn_rails for list of valid instructions.
    error
  end
end
