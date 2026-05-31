---
draft: true
---

## First-Time Setup

1. **Install Obsidian** from [obsidian.md](https://obsidian.md) — it's free for personal use.
2. **Open this folder as a vault.** When Obsidian launches, pick "Open folder as vault" and select the `The Adventures of the Phandalin Five` folder (this README is inside it). Obsidian will use the folder name as the vault name automatically.
3. **Open `Home.md`** — that's your campaign dashboard.

## Folder Layout

| Folder         | What goes here                                                              |
| -------------- | --------------------------------------------------------------------------- |
| `01-Sessions`  | One note per session, with recap, key events, loot, XP                      |
| `02-Party`     | Your character and your party members' characters                           |
| `03-NPCs`      | Every named NPC you meet (or the DM mentions twice)                         |
| `04-Locations` | Cities, dungeons, taverns, regions — anywhere with a name                   |
| `05-Quests`    | Active and completed quests/hooks                                           |
| `06-Lore`      | Factions, gods, history, magic items, monsters — world stuff                |
| `99-Templates` | Starter templates for new notes (don't edit the content of your notes here) |

## The One Thing That Makes Obsidian Click

`[[double brackets]]`. Type them around any name and Obsidian links to (or creates) a note for it. As you write a session recap, do this for every NPC, place, item, and quest. Over a few sessions you'll have a network of interconnected notes you can navigate by clicking, search, or visualize in the Graph View (`Ctrl/Cmd+G`).

Example, written naturally during a session:
> We met [[Sildar Hallwinter]] at [[Stonehill Inn]] in [[Phandalin]]. He's looking for [[Gundren Rockseeker]] and offered us 50gp to find him.

That's four wiki-pages worth of structure, written like a sentence.

## Plugins Worth Enabling Early

Open **Settings → Community plugins → Browse**. Turn off "restricted mode" first.

### Install now: Templater

The templates in `99-Templates/` are written for the **Templater** community plugin. They use `<% tp... %>` syntax to prompt for a name/number and auto-rename the file. **Without Templater installed, those tags will appear as raw text in your notes instead of being processed.**

**Setup (one-time, ~2 minutes):**

1. Install **Templater** from Community plugins
2. **Settings → Templater → Template folder location** → set to `99-Templates`
3. **(Recommended) Folder Templates** — in Templater settings, scroll to "Folder Templates" and add:
   - `01-Sessions` → `99-Templates/Session Template.md`
   - `03-NPCs` → `99-Templates/NPC Template.md`
   - `04-Locations` → `99-Templates/Location Template.md`
   - `05-Quests` → `99-Templates/Quest Template.md`
   
   With this set, **any new note created in those folders will auto-apply the right template**. That's the whole magic — right-click `03-NPCs/` → New note → it prompts for the NPC's name, renames the file, and fills the structure. No menu-hunting.
4. **(Optional) Hotkey** — Settings → Hotkeys → search "Templater: Create new note from template" → bind something like Cmd+Shift+N.

### Maybe install later

- **Dataview** — lets you auto-generate lists like "all active NPCs" from frontmatter. Install once you find yourself wanting one specific query. The vault's frontmatter is already structured for it.
- **Initiative Tracker** (optional) — combat tracking inside Obsidian itself. Only relevant if you're running combat here rather than in Foundry.

### Skip

- **Calendar / Periodic Notes** — these are built for journaling (one note per day). They don't map well to D&D's "one note per session" model. Templater + the session template handle this better.
- **RPG Manager** — overlaps with what the vault already does; would require restructuring.

## Tags I Suggest

Use these on notes so you can filter by them later (Obsidian's search supports `tag:#npc`):

- `#npc` `#location` `#quest` `#faction` `#item` `#monster`
- `#status/active` `#status/dead` `#status/unknown` (for NPCs)
- `#quest/active` `#quest/done` `#quest/failed`
- `#party` for PCs

## Your Workflow After A Session

**With Templater installed and folder templates set up (recommended):**

1. Right-click `01-Sessions/` → **New note**
2. Templater prompts: "Session number?" → type the number → it auto-fills today's date, renames the file to `Session N - YYYY-MM-DD`, and structures the note for you
3. Fill in the recap while it's fresh
4. As you mention any NPC/place/quest, wrap it in `[[brackets]]`
5. Click the red links to create stub pages — right-click on `03-NPCs/` and create a new note there to get the NPC template auto-applied (it'll prompt for the NPC's name and rename the file). Same for `04-Locations/` and `05-Quests/`.

**Without Templater (manual fallback):**

1. Open `99-Templates/Session Template.md`, copy the contents
2. Create a new note in `01-Sessions/` named like `Session 12 - 2026-05-14`
3. Paste, manually delete the `<%* ... %>` block at the top and replace `<% sessionNum %>` / `<% today %>` with the right values
4. Continue as above

The Templater path takes ~5 seconds per session. The manual path takes ~30 seconds. Either works — install Templater when you're ready for the speedup.

That's the whole loop. Everything else is polish.