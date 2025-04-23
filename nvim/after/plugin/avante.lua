require('avante_lib').load()
require('avante').setup({
  -- add any opts here
  provider = "copilot",
  auto_suggestions_provider = "copilot",
  behaviour = {
    auto_suggestions = false, -- Experimental stage
  },
  openai = {
    endpoint = "https://api.openai.com/v1",
    model = "gpt-4o-mini",
    timeout = 30000, -- Timeout in milliseconds
    temperature = 0,
    max_tokens = 8192,
    reasoning_effort = "medium",
  },
  ollama = {
    endpoint = "http://127.0.0.1:11434", -- Note that there is no /v1 at the end.
    model = "codegemma",
  },
  claude = {
    endpoint = "https://api.anthropic.com",
    model = "claude-3-5-sonnet-20241022",
    temperature = 0,
    max_tokens = 4096,
  },
  vendors = {
    deepseek = {
      __inherited_from = "openai",
      api_key_name = "DEEPSEEK_API_KEY",
      endpoint = 'https://api.deepseek.com',
      model = 'deepseek-coder'
    }
  },
})
