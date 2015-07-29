require_relative '../test_init'

def assert(val, message=nil)
  logger = logger(caller[0])
  if val
    logger.pass(message || '')
  else
    logger.fail(message || '')
  end
end
