#include <stdlib.h>
extern void v1 (signed char, signed char, signed int, unsigned short);
extern void (*v2) (signed char, signed char, signed int, unsigned short);
extern signed int v3 (signed char);
extern signed int (*v4) (signed char);
extern signed char v5 (unsigned int);
extern signed char (*v6) (unsigned int);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern void v9 (unsigned short, unsigned int, signed short, unsigned short);
extern void (*v10) (unsigned short, unsigned int, signed short, unsigned short);
extern signed short v11 (unsigned short);
extern signed short (*v12) (unsigned short);
signed char v13 (signed short);
signed char (*v14) (signed short) = v13;
extern signed short v15 (signed int, signed char, signed int);
extern signed short (*v16) (signed int, signed char, signed int);
extern unsigned int v17 (signed short, unsigned short, unsigned int, unsigned char);
extern unsigned int (*v18) (signed short, unsigned short, unsigned int, unsigned char);
extern signed char v19 (void);
extern signed char (*v20) (void);
signed char v23 (signed char, unsigned char, unsigned char, unsigned char);
signed char (*v24) (signed char, unsigned char, unsigned char, unsigned char) = v23;
extern signed char v25 (void);
extern signed char (*v26) (void);
extern void v27 (void);
extern void (*v28) (void);
void v29 (signed char);
void (*v30) (signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v101 = -3;
unsigned short v100 = 5;
unsigned char v99 = 6;

void v29 (signed char v102)
{
history[history_index++] = (int)v102;
{
for (;;) {
unsigned int v105 = 3U;
unsigned short v104 = 4;
unsigned short v103 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v23 (signed char v106, unsigned char v107, unsigned char v108, unsigned char v109)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
signed short v112 = -1;
unsigned char v111 = 0;
unsigned char v110 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (signed short v113)
{
history[history_index++] = (int)v113;
{
for (;;) {
unsigned int v116 = 7U;
unsigned int v115 = 6U;
signed int v114 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
