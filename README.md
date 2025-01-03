# ChunkTracker

ChunkTracker is a data pack for Minecraft: Java Edition 1.21.4+ which lets you create and customize lists of chunks in any dimension to run commands in.

## Usage

The library contains four functions to add or remove tracked chunks, test if a chunk is tracked, and run a command in every tracked chunk. For compatibility, every data pack must specify a certain ID (ideally, the namespace of the pack); tracked chunks are specific to one ID, and multiple packs can use ChunkTracker at the same time with different lists of chunks.

### `chunktracker:start_tracking`

Add the current position to tracked chunks. Fails if the chunk is already tracked.

```mcfunction
function chunktracker:start_tracking {id: "mypack"}
```

### `chunktracker:stop_tracking`

Remove the current position from tracked chunks. Fails if the chunk is not already tracked.

```mcfunction
function chunktracker:start_tracking {id: "mypack"}
```

### `chunktracker:is_tracked`

Returns `1` if the current position is in tracked chunks, otherwise returns `0` and fails.

```mcfunction
function chunktracker:is_tracked {id: "mypack"}
```

### `chunktracker:broadcast`

Runs a command in the corner of every tracked chunk, at `y=0`.
Chunks are not guaranteed to be loaded.

```mcfunction
function chunktracker:broadcast {id: "mypack", command: "summon minecraft:creeper"}
```
