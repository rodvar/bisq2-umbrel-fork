# Bisq 2 for Umbrel

Umbrel app packaging for [Bisq 2](https://github.com/bisq-network/bisq2) — the
decentralized, no-KYC peer-to-peer Bitcoin exchange — so you can run it on your
own [Umbrel](https://umbrel.com) node over Tor.

> **Status:** early work in progress. Not yet published to the Umbrel App Store
> and not installable yet — see [Roadmap](#roadmap--open-questions).

## About Bisq 2

Bisq 2 lets you trade Bitcoin peer-to-peer without KYC, accounts, or a trusted
third party, with all traffic routed over Tor. Its first protocol, **Bisq Easy**,
is built for newcomers: buy or sell BTC for fiat directly with another person —
no security deposit, no trading fees — where trust is based on a reputation
system and each trade is coordinated through built-in, end-to-end encrypted chat.
Additional protocols (e.g. the trustless MuSig protocol) are planned.

Learn more: [bisq.network](https://bisq.network) · [Bisq 2 wiki](https://bisq.wiki/Bisq_2)

## Installation

_Not yet available._ Installation instructions will be added here once the
packaging is ready (via a community app store, and/or after submission to the
official Umbrel App Store).

## Repository layout (planned)

umbrel-app.yml        # Umbrel app manifest (metadata, port, description)
docker-compose.yml    # Service definition for the Umbrel runtime
Dockerfile            # Container build for the Bisq 2 node + web access

## Roadmap / open questions

Umbrel apps must open to a browser-accessible UI. Bisq 2 ships as a JavaFX
desktop app and has no official headless web UI (that effort was discontinued in
Dec 2025), so packaging depends on one of:

- exposing the Bisq 2 `http-api` behind a web frontend, or
- wrapping the desktop app in a web-desktop (noVNC/KasmVNC) container.

Remote access and authentication should reuse Bisq 2's secure device-pairing work
where possible.

## Contributing

Issues and PRs welcome. Please keep changes focused on the Umbrel packaging —
Bisq 2 itself lives in [bisq-network/bisq2](https://github.com/bisq-network/bisq2).

## License

[AGPL-3.0](./LICENSE), matching Bisq 2.
