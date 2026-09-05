#!/bin/bash
set -e

cd /opt/node-demo

npm ci --omit=dev

chown -R ec2-user:ec2-user /opt/node-demo

cat > /etc/systemd/system/node-demo.service <<'EOF'
[Unit]
Description=Node Demo Application
After=network.target

[Service]
Type=simple
User=ec2-user
WorkingDirectory=/opt/node-demo
ExecStart=/usr/bin/node /opt/node-demo/server.js
Restart=always
Environment=NODE_ENV=production

[Install]
WantedBy=multi-user.target
EOF

systemctl daemon-reload
systemctl enable node-demo