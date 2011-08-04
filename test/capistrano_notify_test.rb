require 'test/unit'
require 'lib/capistranoNotify'

class TestCapistranoNotify < Test::Unit::TestCase
    def test_check_parameters
        # Each connection should have the following:
        #   * username
        #   * password
        #   * target
        #   * message
        connection = CapistranoNotify.new(username='test',password='test',target='test_target',message = 'test message')
        assert_equal('test',connection.get_username)
        assert_equal('test',connection.get_password)
        assert_equal('test_target',connection.get_target)
        assert_equal('message',connection.get_message)

    end
end

