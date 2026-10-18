echo '#!/bin/bash
rm -f main.c main.cpp main
printf "#include <iostream>\nint main() {\n    int n;\n    if (!(std::cin >> n)) return 1;\n    long long sum = 0;\n    int mn = 0, mx = 0;\n    for (int i = 0; i < n; ++i) {\n        int v;\n        if (!(std::cin >> v)) return 1;\n        if (i == 0) { mn = v; mx = v; }\n        else {\n            if (v < mn) mn = v;\n            if (v > mx) mx = v;\n        }\n        sum += v;\n    }\n    std::cout << \"count=\" << n << \"\\n\";\n    std::cout << \"sum=\" << sum << \"\\n\";\n    std::cout << \"min=\" << mn << \"\\n\";\n    std::cout << \"max=\" << mx << \"\\n\";\n    return 0;\n}\n" > main.cpp
g++ -std=c++17 -Wall -Wextra -o main main.cpp
./main < samples/01-mixed.in' > run.sh

在终端输入这句，按回车：
chmod +x run.sh
然后再输入这个，按回车
./run.sh
