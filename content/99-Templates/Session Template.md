<%*
const sessionNum = await tp.system.prompt("Session number?");
const today = tp.date.now("YYYY-MM-DD");
const fileName = `Session ${sessionNum} - ${today}`;
await tp.file.rename(fileName);
-%>
---
tags: [session]
date: <% today %>
session-number: <% sessionNum %>
---

# Session <% sessionNum %> — <% today %>

> **In-game date:** 
> **Location:** [[]]

## Recap (One Paragraph)

*Write a 3-5 sentence summary you could read out loud at the next session.*

## Key Events

- 
- 

## NPCs Met

- [[]] — 

## Places Visited

- [[]]

## Loot & Rewards

- 

## Open Threads

*What got set up but not resolved? What did the DM linger on?*

- 

## Questions / Theories

- 

## Quotes & Memorable Moments

- 
