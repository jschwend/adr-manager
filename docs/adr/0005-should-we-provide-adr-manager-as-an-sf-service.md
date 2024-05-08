# Should we provide ADR-Manager as an SF Service

* Status: proposed
* Date: 2024-05-08

Technical Story: There is currently no firmwide ADR recording service

## Context and Problem Statement

This simple web UI could improve and enforce some ADR aspects. We have no way to ensure ADR's are written, but as a firmwide service, dev team might begin to utilize such a service.

## Decision Drivers

* Easy to use
* Consistent capture of pertinent data
* Preserve and document decisions close to the code

## Considered Options

* Excel
* Box
* ADR-Manager

## Decision Outcome

Chosen option: "ADR-Manager", because Satisfies all objectives

### Positive Consequences

* Deploy as container on Azure

### Negative Consequences

* None

## Pros and Cons of the Options

### Excel

MS Excel spreadsheets

* Good, because Everyone knows how to use it
* Bad, because No enforcement of consistency

### Box

Simply store whatever format you want in Box

* Good, because Not....
* Bad, because Can't find anything
* Bad, because No governance

### ADR-Manager

Web UI

* Good, because Enforces template
* Good, because Keeps docs in same repo as code
* Good, because Free
* Good, because Easy to modify
* Bad, because People probably will not use it
* Bad, because We need to maintain it
