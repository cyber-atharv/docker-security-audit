# Changelog

All notable changes to docker-security-audit are documented here.

### [2025-12-23]
- test: add unit tests for boundary input cases and error branches

### [2026-01-19]
- feat: add graceful shutdown signal handler (SIGINT/SIGTERM)

### [2026-02-17]
- feat: implement verbose output mode for troubleshooting

### [2026-02-19]
- feat: add support for custom timeout configuration via CLI flags

### [2026-02-26]
- feat: implement verbose output mode for troubleshooting

### [2026-03-03]
- fix: handle nil pointer dereference on unexpected connection close

### [2026-03-09]
- perf: minimize redundant heap allocations in hot loop

### [2026-03-22]
- test: implement mock service for end-to-end integration tests

### [2026-04-12]
- refactor: simplify token parsing pipeline and reduce cognitive complexity

### [2026-05-03]
- docs: add example configuration commands to quickstart guide

### [2026-05-16]
- fix: ensure file descriptors are properly closed on error exits

### [2026-06-05]
- fix: ensure file descriptors are properly closed on error exits

### [2026-07-09]
- fix: patch edge-case buffer truncation in stream reader

### [2026-07-10]
- refactor: decouple configuration loader from runtime engine

### [2026-07-12]
- test: verify backward compatibility with legacy message format

### [2026-07-19]
- refactor: extract validation logic into dedicated helper module

### [2026-07-23]
- feat: add graceful shutdown signal handler (SIGINT/SIGTERM)

### [2026-07-25]
- perf: parallelize independent batch verification tasks

### [2026-08-31]
- feat: improve error logging with contextual debug traces

