require "spec_helper"

module Meerstats
  describe Installer do
    subject { described_class.perform }

    let(:file_path) { Rails.root.join('config', 'initializers', 'meerstats.rb') }

    after do
      File.delete(file_path)
    end

    it "creates config file" do
      expect(File.exists?(file_path)).to eq(false)
      subject
      expect(File.exists?(file_path)).to eq(true)
    end
  end
end
