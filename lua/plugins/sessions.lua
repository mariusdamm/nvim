return {
	"nvim-mini/mini.sessions",
	version = false,
	config = function()
		require("mini.sessions").setup({
			autoread = false, -- Session beim Starten von Neovim automatisch laden?
			autowrite = true, -- Session beim Verlassen automatisch speichern?
			directory = vim.fn.stdpath("data") .. "/sessions", -- Speicherort
			file = "", -- 'Local' Session Dateiname (leer lassen für globales Verzeichnis)
		})

		local map = vim.keymap.set
		local session = require("mini.sessions")

		map("n", "<Leader>ss", function()
			Snacks.input({
				prompt = "Name der Session",
				icon = "💾 ", -- Optional: Ein passendes Icon
				placeholder = "Projektname...", -- Platzhaltertext
			}, function(name)
				-- Dieser Code wird erst ausgeführt, wenn du Enter drückst
				if name and name ~= "" then
					session.write(name)
					-- Optional: Kurze Bestätigung via Snacks Notifier
					Snacks.notify.info("Session '" .. name .. "' gespeichert.")
				end
			end)
		end, { desc = "Session: Speichern" })

		-- B) Session auswählen und laden
		map("n", "<Leader>sl", function()
			session.select("read")
		end, { desc = "Session: Laden" })

		-- C) Session löschen
		map("n", "<Leader>sd", function()
			session.select("delete")
		end, { desc = "Session: Löschen" })

		-- D) Aktuelle Session speichern (ohne Nachfrage, überschreibt aktuelle)
		map("n", "<Leader>sw", function()
			session.write(nil) -- nil nutzt die aktuelle Session
		end, { desc = "Session: Aktuelle überschreiben" })
	end,
}
