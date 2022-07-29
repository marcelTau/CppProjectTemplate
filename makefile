
build_dir	= build
exe_name 	= TODO_ChangeExecutableName

help:
	@echo "USAGE:"
	@echo -e "    - build -- to build the code"
	@echo -e "    - test -- run tests"
	@echo -e "    - run -- runs the program with no arguments"
	@echo -e "    - compile_commands -- build the compile_commands.json file"

compile_commands:
	@cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=1 .

build:
	@cmake -B $(build_dir) -S .

test: build
	@clear
	@make test -C $(build_dir)

run: build
	@clear
	./$(build_dir)/$(exe_name)

.PHONY: build compile_commands test run help
