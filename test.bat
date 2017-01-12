@echo off
@for %%f in (tests\*.lake) do echo Testing %%f && lake %%f
