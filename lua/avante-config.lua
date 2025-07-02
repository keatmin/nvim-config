local avante = require("avante")

avante.setup({
	debug = false,
	mode = "legacy",
	auto_suggestions_provider = "openai",
	tokenizer = "tiktoken",
	providers = {
		openai = {
			model = "gpt-4.1-mini",
			timeout = 30000, -- Timeout in milliseconds, increase this for reasoning models
			extra_request_body = {
				temperature = 0.75,
				max_completion_tokens = 16384, -- Increase this to include reasoning tokens (for reasoning models)
				reasoning_effort = "medium", -- low|medium|high, only used for reasoning models
			},
		},
	},
	behaviour = {
		auto_suggestions = false,
	},
})
