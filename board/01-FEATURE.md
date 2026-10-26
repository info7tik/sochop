# FEATURE

## User Story

### Retrieve an existing shopping list
As a member of the group, I want to open the shared shopping list so that I can see what we already need. The list appears as soon as I open the app on my phone. Items show who added them and whether they are already checked off. I can see the list even before I add anything new.

## Features

### 1. Shopping list item storage

| | |
|---|---|
| **Description** | Each shopping list item stores its name. |
| **Data change** | Creation: a shopping list item with the item name (e.g. "Milk"). |
| **Test** | Storage test: create an item with name "Milk"; reading it back returns name "Milk". |

### 2. Read endpoint returns an empty list when there are no items

| | |
|---|---|
| **Description** | When no shopping list items are stored, the read endpoint returns an empty list instead of an error. |
| **Data change** | None. |
| **Test** | API: with no stored items, `GET /api/shopping-list` returns 200 with `[]`. |

### 3. Read endpoint returns the shopping list items

| | |
|---|---|
| **Description** | A read endpoint returns every stored shopping list item with its name. |
| **Data change** | None. |
| **Test** | API: with one stored item "Milk", `GET /api/shopping-list` returns 200 with a list containing `{"name": "Milk"}`. |

### 4. App requests the shopping list on open

| | |
|---|---|
| **Description** | When the app opens, it requests the shopping list from the read endpoint. |
| **Data change** | None. |
| **Test** | UI: with the endpoint stubbed, opening the app sends exactly one `GET /api/shopping-list` request. |

### 5. App shows an empty-list state

| | |
|---|---|
| **Description** | When the returned list has no items, the app shows an empty-list message instead of an empty list view. |
| **Data change** | None. |
| **Test** | UI: with the endpoint stubbed to return `[]`, the opened app shows the text "Your shopping list is empty" and no item rows. |

### 6. App displays the returned items

| | |
|---|---|
| **Description** | The app renders each item returned by the read endpoint in the shopping list view as soon as the data loads. |
| **Data change** | None. |
| **Test** | UI: with the endpoint stubbed to return "Milk" and "Eggs", the opened app shows both "Milk" and "Eggs" in the list. |
