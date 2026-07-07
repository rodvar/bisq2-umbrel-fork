# Bisq 2 for Umbrel

A community [Umbrel](https://umbrel.com) app store that packages **Bisq 2 Node** —
a self-hosted [Bisq 2](https://github.com/bisq-network/bisq2) node for the
[Bisq Connect](https://github.com/bisq-network/bisq-mobile) mobile app.

Run your own node so Bisq Connect talks to a node **you** control instead of a
stranger's — more privacy, no third-party trust. The node is headless and reaches
the Bisq P2P network over its own bundled Tor; this app gives it a simple browser
face showing node status and a pairing QR code.

## Install

1. In umbrelOS, open the **App Store**, then the **⋯** menu → **Community App Stores**.
2. Add this store: `https://github.com/bisq-network/bisq2-umbrel`
3. Open the **Bisq Network** community store and install **Bisq 2 Node**.

Submission to the official Umbrel App Store is in progress; until then, the
community store above is the way to install.

## Pair with Bisq Connect

1. Open the **Bisq 2 Node** app in umbrelOS — it shows node status and a pairing
   QR code (the node first needs a minute to bootstrap over Tor).
2. In the [Bisq Connect](https://github.com/bisq-network/bisq-mobile) mobile app,
   scan the QR code to pair with your node.

> **Security:** the pairing code grants trade control of your node. Umbrel's
> authenticated app proxy is what protects it — never expose this app to an
> untrusted network. Your node's identity and data live under the app's data
> directory and are covered by Umbrel's native backups.

## What's inside

| File | Purpose |
|---|---|
| `umbrel-app-store.yml` | Community app store root config |
| `bisq2-node/umbrel-app.yml` | App manifest (metadata, port `8091`, gallery, icon) |
| `bisq2-node/docker-compose.yml` | The headless node + a small web UI sidecar for the QR page |

The images (`ghcr.io/bisq-network/bisq2-api` and `…/bisq2-api-web-ui`) are built
multi-arch (amd64 + arm64) from [bisq-network/bisq2](https://github.com/bisq-network/bisq2)
and digest-pinned here. They're released automatically from the
[bisq-network/bisq-mobile](https://github.com/bisq-network/bisq-mobile) CI, which
opens the version-bump PRs against this store.

## Contributing

Issues and PRs welcome — please keep changes focused on the Umbrel packaging.
Bisq 2 itself lives in [bisq-network/bisq2](https://github.com/bisq-network/bisq2),
and the mobile client in [bisq-network/bisq-mobile](https://github.com/bisq-network/bisq-mobile).

## License

[AGPL-3.0](./LICENSE), matching Bisq 2.
