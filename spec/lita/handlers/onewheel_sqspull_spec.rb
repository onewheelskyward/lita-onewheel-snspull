require 'spec_helper'

def mock_up(filename)
  mock = File.open("spec/fixtures/#{filename}.html").read
  allow(RestClient).to receive(:get) { mock }
end

describe Lita::Handlers::Onewheelsnspush, lita_handler: true do
  it 'cocks about' do
    # mock_up 'fil'
    send_command 't1a5 test'
    expect(replies.last).to include('test')
  end
end
