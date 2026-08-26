---
draft: true
tags: [meta, claude-instructions]
---

# CLAUDE.md — Storm King's Thunder Campaign Vault

Standing instructions for working in this Obsidian vault. Read before making changes.

*(This file is `draft: true` so Quartz's `remove-draft` plugin excludes it from the published site, and is added to Obsidian's excluded-files filter in `.obsidian/app.json`. Keep it at the vault root so Claude Code auto-loads it.)*

## What this vault is

Player-side campaign notes for a D&D 5e (2024) Storm King's Thunder game, with Phandelver leadup. The vault is the source of truth — see `Original Notes - Raw Archive.md` for the pre-import source material. `Home.md` is the top-level navigation.

## Core rules

**No spoilers, ever.** This is a player-side vault. Do not add information that the party has not learned in-session, even if you know it from outside sources. If a session note implies the party doesn't yet know something, treat that as canon.

**The vault is canon.** When in doubt, what's written in the vault wins over outside knowledge. Player interpretations, mishearings, and house rules are all valid.

**Outside sources are allowed only for:**
- Spellchecking proper nouns (NPC names, places, spells, items)
- Disambiguating between similarly-named things to figure out which the notes mean
- Clarifying rules or mechanics — but only when explicitly asked

Never use outside sources to add lore, fill in NPC backstories, predict plot, or "complete" information the party hasn't learned.

## How to work

**Edit freely, ask when uncertain.** Routine propagation, formatting, cross-linking, and new-file creation can proceed without checking in. But:

**Stop and ask — don't guess — when:**
- A session entry contradicts an existing note
- A name might refer to two different entities (or one entity might have two names)
- It's unclear whether new information should overwrite, append to, or branch from existing content
- You're tempted to infer something the notes don't directly state
- A new NPC/location/item lacks enough context to file confidently

Wait for an answer before proceeding on the ambiguous item. Keep working on unrelated items in the meantime.

## Weekly update task

The standing weekly task:
1. Scan for new files since last update
2. Read new session entries and propagate facts to the files they touch — `Home.md` threads, NPC `Current Tasks` / `Open Threads` sections, location cross-references, faction notes
3. **Refresh the "Previously, in …" recap on both `Home.md` AND `index.md`** — replace it with a 4–6 sentence condensed recap of the *most recent* session. The **same recap block goes in both files** and must be kept in sync.
   - In `Home.md`: the section lives directly under the Source-of-Truth blockquote and immediately above `🔥 Active Threads`.
   - In `index.md`: the section lives directly under the `## Start Here` block and immediately above `## The Party`.
   - The heading takes the form `## 📖 Previously, in <location> — [[Session NN - <PC> - YYYY-MM-DD|Session NN]] (YYYY-MM-DD)`.
   - Always **replace** the previous recap rather than appending — only the latest session belongs there. Wiki-link the NPCs, places, factions, and quest threads referenced, and bias toward the facts the party would want to remember at the start of next session (live leads, cliffhangers, new items, new alliances). This step is **mandatory on every vault update**, not optional — do it without being asked.
4. Format-check new files against the vault's existing conventions (frontmatter, headings, wiki-links)
5. **Delete any session file that is still empty.** The user pre-creates a file per PC before each session; the ones nobody wrote in are wasted space. If a session note’s **Key Events** section has no real content, **delete the file** — first re-point any inbound wiki-links (e.g. `Home.md`’s session list, PC notes) at a sibling file for that same session. Do this **without asking**.
6. **Create the next session’s batch — one file per PC — if they don’t already exist.** Five files, from `99-Templates/Session Template.md`, named `Session NN - <PC> - YYYY-MM-DD.md`. **PC short names: `Var`, `Gotrek`, `Sir Joseph`, `Estelle`, `Jaak`.** Sessions run **weekly on Mondays**, so the date is the Monday after the session you just processed. Fill `session-number: NN - <PC>` and the `# Session NN - <PC> — YYYY-MM-DD` heading; leave the body as the empty template.
7. Surface a list of questions for anything ambiguous before finalizing

## Formatting conventions

- Wiki-links for all internal references: `[[NPC Name]]`, `[[Location]]`
- Frontmatter on NPCs, locations, factions (tags, status, location/affiliation as relevant)
- Session files: `Session NN - YYYY-MM-DD.md`
- Match the structure of existing files in each folder — don't invent new section schemas
- **Single source of truth.** When a Lore page and a Quest page (or any two notes) cover the same subject, don't duplicate the shared facts — pick one owner and link to it. **Convention:** the **Lore** page owns *static reference data* (e.g. `[[Ulfgardian Mounds]]`: who's where, how to approach them); the **Quest** page owns *live state* (e.g. `[[Gather Ulfgardian Relics]]`: inventory, prioritized plan, progress). Cross-link instead of restating, so the two can't drift.

## Reference facts (carried across sessions)

> When something is worth remembering for future sessions — a recurring rule, a durable piece of campaign canon, or a standing preference — record it **here** so it auto-loads with this file. (Standing preference from the user: anything memory-worthy goes in CLAUDE.md.)

- **Lord's Alliance ranks:** "**Stingblade**" is the **3rd** Lord's Alliance rank. (Gotrek Runehammer and Sir Joseph Gordon Die Hard were promoted to it by Commander Hawkwinter, Session 62.)
- **"Aasimar" is the correct spelling** — it's Jaak Greye's race. Session notes render it several ways ("Aesir" in Var's, "Asimaar" in Jaak's); **the vault standardizes on *aasimar*** in its own voice, while leaving each player's session file in their own words. Applies retroactively to anything logged as "Aesir."
- **Player-spelling variants resolve to one file with aliases.** When two session files spell one name differently, pick **one** spelling for the filename and put the rest in the note's `aliases:` frontmatter, so old links and the players' own wiki-links all still resolve. **When the DM hasn't ruled, the most recent session's spelling wins** — update the filename and demote the older spelling to an alias. Current examples: **Althariel** *(S68 spelling; aliases Altariar, Altharial)* and **Mystra** *(alias: Mystral — Jaak's S68 spelling)*.
- **Blood of the ancients** (S68, from Althariel): **Jaak Greye and Estelle Moonglow Platinum both carry it** — an inherited bloodline that makes a person **strong enough to be an avatar, a vessel of the gods**. Bhaal once tried to inhabit a person of ancient blood. Jaak's line is the **"Thier" blood** — **the vault follows Jaak's spelling**, still unconfirmed — out of **Celestia**. This is the frame for Jaak's kidnapping and, increasingly, Estelle's parentage.
- **Harper ranks (3):** **Harp Shadow → Bright Candle → High Harper.** **Jaak Greye and Estelle Moonglow Platinum are Bright Candles** (promoted by Krowen Valharrow, Session 69); **Krowen Valharrow is a High Harper**. The **Harper teleportation-circle network is a secret known only to Bright Candles and High Harpers** — treat it as need-to-know in the vault's voice.
- **The Harper teleportation circles (S69):** **500 gp in diamond dust moves 6 people, and the circle's attendant must be present.** Connected: **Everlund, Waterdeep, Mirabar, Yartar, the party's Phandalin bastion, "and others."** **Not connected: Neverwinter** (closed off **because of Neverember** — **confirmed by the DM**; Jaak's notes spell it "Never-ember") **and Baldur's Gate.** **Droop** is the party's resident mage / circle attendant.
- **The *Ignitamis* runs on oil, and range is a real constraint** (established S69). The airship is a **fuel budget**, not free movement — in S69 the party **walked to Stone Stand** because it is off the circle network and they lacked the oil to fly there *and* make the following leg. When routing the party in the vault's voice, treat **circles = network cities only, at 500 gp/6 people**, and **ship = anywhere, but spends oil**.
- **Ulfgardian relics must be *giant* relics** — the oracles trade answers for giant relics. The **Stone Stand relic is confirmed a *giant's* skull** (S69, 100 lb), which is what makes it eligible.
- **Working names for unnamed places** are allowed when the party has no true name yet — file them under the working name with an explicit callout that it's provisional, and rename when the real name surfaces. Current example: the **Aasimar Temple** (S67, northeast of Everlund).

## Folder structure

Where each note type lives. When filing a new note, match it to the right folder; don't invent new top-level folders.

- **Vault root** — navigation and meta only: `Home.md` (top-level index), `README - Start Here.md`, `index.md`, `Active Quests.base` (Obsidian base view). No content notes go here.
- **`01-Sessions/`** — one note per PC per session, named `Session NN - <PC> - YYYY-MM-DD.md` (each player keeps their own perspective file; do not merge them). Also holds `Original Notes - Raw Archive (Through Session 55).md`, the preserved pre-import source material.
- **`02-Party/`** — the five PC notes plus `The Phandalin Five.md` (party-level overview). Only PCs live here.
- **`03-NPCs/`** — every named NPC, one file each (allies, antagonists, quest-givers, deities the party has encountered). Also holds `Minor Contacts.md` as the catch-all roster for low-touch NPCs who don't yet warrant their own file.
- **`04-Locations/`** — cities, dungeons, taverns, regions the party has visited or been told about in depth. `Other Locations.md` is the catch-all for places mentioned but not yet developed; promote a place to its own file once it has its own scenes / NPCs / open threads.
- **`05-Quests/`** — one file per active or completed quest thread. Names match the wiki-links used in `Home.md`'s Active Threads.
- **`06-Lore/`** — factions, cosmology, items, world lore, and DM-provided source documents (e.g. `The Waterdeep Wazoo Issue 496.md`). `Factions.md` is the master faction index; `Items and References.md` collects magic items and rules references.
- **`99-Templates/`** — note templates (`NPC Template.md`, `Location Template.md`, `Quest Template.md`, `Session Template.md`, `Character Template.md`). When creating a new note of a given type, match the template's structure.
- **`Attachments/`** — images and binary assets referenced by notes (e.g. `Phandalin Five Logo.png`).

When a new note straddles categories (e.g. a faction's HQ that's also a location), file it where the *primary* identity lives and cross-link from the other folder.
