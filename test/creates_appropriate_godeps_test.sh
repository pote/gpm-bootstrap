. assert.sh


cat > main.go <<EOF
package main

import (
  "fmt"
  "github.com/pote/gpm-testing-package"
)

func main() {
	fmt.Println(gpm_testing_package.Version())
}
EOF

assert_raises "../bin/gpm-bootstrap"
assert_raises "grep -q 'github.com/pote/gpm-testing-package v6.2' Godeps"
assert "go run main.go" "v6.2"

rm Godeps
rm main.go
assert_end examples
