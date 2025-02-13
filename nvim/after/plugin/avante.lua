require('avante_lib').load()
require('avante').setup({
  -- add any opts here
  provider = "openai",
  auto_suggestions_provider = "openai",
  behaviour = {
    auto_suggestions = false, -- Experimental stage
  },
  openai = {
    endpoint = "https://api.openai.com/v1",
    model = "gpt-4o-mini",
    timeout = 30000, -- Timeout in milliseconds
    temperature = 0,
    max_tokens = 4096,
  },
  vendors = {
    ollama = {
      __inherited_from = "openai",
      api_key_name = "",
      endpoint = "http://127.0.0.1:11434/v1",
      model = "codegemma",
    },
    deepseek = {
      __inherited_from = "openai",
      api_key_name = "DEEPSEEK_API_KEY",
      endpoint = 'https://api.deepseek.com',
      model = 'deepseek-coder'
    }
  },
})
