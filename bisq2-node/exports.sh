# Umbrel sources this before bringing the app up. It declares the static IP the compose
# references. NOTE: all apps share ONE network (umbrel_main_network, 10.21.0.0/16); static
# IPs must be UNIQUE across every installed app. The 10.21.21.x/10.21.22.x blocks are
# heavily used by stock apps (electrs, mempool, lightning, bitcoin-knots...), so we sit in
# the empty 10.21.30.x block. Only `server` needs an IP — the `web` sidecar shares its
# netns via network_mode and has no address of its own.
export APP_BISQ2_NODE_IP="10.21.30.10"
