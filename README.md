x64 Assembly Learning Roadmap 🚀
Phase 1: Advanced Memory & Stack Operations
✅ Indexed & Scaled Addressing (e.g., [rbx + rsi*2])
✅ Stack Tricks (PUSH, POP, function prologues/epilogues)
✅ Memory Alignment & Padding Handling

Topics Covered:
✅ Basic Memory Access (BYTE, WORD, DWORD, QWORD)
✅ Indexed Addressing ([rbx+offset] memory access)
✅ Scaled Indexed Addressing (Array-like access using index*size)
✅ Struct-like Memory Organization (Field offsets, aligned data structures)
✅ Stack Operations (PUSH, POP, Call/Ret, Stack Frames)
✅ Mixing Stack Values (Calling functions, preserving registers)

Phase 2: Bitwise Manipulation & Flags
🔄 Current Progress: [Start Here]

🔹 Bitmasking & Bitwise Operations

AND (Clearing bits)

OR (Setting bits)

XOR (Toggling bits)

NOT (Flipping bits)

SHL/SHR (Bit shifting)

🔹 Flags & Conditional Logic

Zero Flag (ZF)

Sign Flag (SF)

Carry Flag (CF)

Overflow Flag (OF)

Optimized Conditional Jumps (TEST, BT, CMOV)

Phase 3: SIMD (XMM/YMM) & Vector Processing
🔹 Basic SIMD Moves (MOVDQU, MOVUPS)
🔹 Vectorized Math (PADD, PMUL, PSHUFFLE)
🔹 Optimized String Processing (PCMPEQB, MOVDQA)

Phase 4: Practical Applications
🔹 Write a Memory Scanner (Pointer Following, Traversing Pages)
🔹 Implement Fast Data Copying (SIMD & REP MOVSB)
🔹 Function Hooking / Inline Patching (for Reverse Engineering)

