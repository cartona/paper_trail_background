# frozen_string_literal: true

require 'paper_trail'
require 'paper_trail/record_trail'
require 'ar_after_transaction'

require_relative 'paper_trail_background/version'
require_relative 'paper_trail_background/record_trail'

module PaperTrailBackground
  mattr_accessor :version_job_class

  def self.version_job_class
    (@@version_job_class || "VersionJob").constantize
  end
end
