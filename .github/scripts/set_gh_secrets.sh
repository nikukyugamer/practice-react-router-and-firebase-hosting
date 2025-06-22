#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"

base64 -i "$PROJECT_ROOT/config/firebase_creds.json" | gh secret set FIREBASE_CREDENTIALS
base64 -i "$PROJECT_ROOT/.firebaserc" | gh secret set FIREBASE_RC

exit 0
