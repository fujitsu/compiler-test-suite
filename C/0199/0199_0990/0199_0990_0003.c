#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed int v3 (unsigned short);
extern signed int (*v4) (unsigned short);
extern signed short v5 (signed char);
extern signed short (*v6) (signed char);
unsigned int v7 (unsigned int);
unsigned int (*v8) (unsigned int) = v7;
extern signed char v9 (signed short);
extern signed char (*v10) (signed short);
signed int v11 (unsigned char, signed char, signed char, signed short);
signed int (*v12) (unsigned char, signed char, signed char, signed short) = v11;
unsigned int v13 (signed int, signed int);
unsigned int (*v14) (signed int, signed int) = v13;
extern signed int v15 (void);
extern signed int (*v16) (void);
extern unsigned short v17 (signed short, unsigned char);
extern unsigned short (*v18) (signed short, unsigned char);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern signed int v21 (unsigned short, unsigned int);
extern signed int (*v22) (unsigned short, unsigned int);
extern signed int v25 (signed short, unsigned char);
extern signed int (*v26) (signed short, unsigned char);
extern signed int v27 (signed char);
extern signed int (*v28) (signed char);
extern signed int v29 (signed int, signed short, unsigned short, unsigned char);
extern signed int (*v30) (signed int, signed short, unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v100 = 7;
unsigned short v99 = 7;
signed short v98 = 2;

unsigned int v13 (signed int v101, signed int v102)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
unsigned char v105 = 2;
signed char v104 = 2;
unsigned char v103 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (unsigned char v106, signed char v107, signed char v108, signed short v109)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
signed char v112 = 2;
unsigned int v111 = 3U;
signed int v110 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (unsigned int v113)
{
history[history_index++] = (int)v113;
{
for (;;) {
unsigned char v116 = 7;
unsigned short v115 = 4;
unsigned char v114 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
