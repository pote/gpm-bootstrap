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
assert "cat Godeps" "github.com/pote/gpm-testing-package v6.2"

rm Godeps
rm main.go
assert_end examples
