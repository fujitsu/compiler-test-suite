#include <stdlib.h>
extern void v3 (unsigned short, unsigned short, unsigned short, unsigned char);
extern void (*v4) (unsigned short, unsigned short, unsigned short, unsigned char);
extern unsigned int v5 (unsigned int, unsigned int, unsigned short, unsigned short);
extern unsigned int (*v6) (unsigned int, unsigned int, unsigned short, unsigned short);
extern signed char v7 (void);
extern signed char (*v8) (void);
signed short v9 (unsigned short, signed short, unsigned char, unsigned int);
signed short (*v10) (unsigned short, signed short, unsigned char, unsigned int) = v9;
extern signed char v11 (unsigned char);
extern signed char (*v12) (unsigned char);
extern signed int v13 (signed char, unsigned short, signed int);
extern signed int (*v14) (signed char, unsigned short, signed int);
extern signed int v15 (signed short, unsigned int, signed char);
extern signed int (*v16) (signed short, unsigned int, signed char);
extern unsigned short v17 (unsigned short, unsigned short, unsigned short);
extern unsigned short (*v18) (unsigned short, unsigned short, unsigned short);
signed int v19 (unsigned short);
signed int (*v20) (unsigned short) = v19;
unsigned short v21 (unsigned short, unsigned short, signed char);
unsigned short (*v22) (unsigned short, unsigned short, signed char) = v21;
extern signed int v23 (signed char);
extern signed int (*v24) (signed char);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v98 = 3U;
unsigned short v97 = 1;
unsigned char v96 = 6;

unsigned short v21 (unsigned short v99, unsigned short v100, signed char v101)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
unsigned int v104 = 0U;
unsigned char v103 = 6;
signed short v102 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (unsigned short v105)
{
history[history_index++] = (int)v105;
{
for (;;) {
unsigned int v108 = 7U;
signed int v107 = -3;
unsigned int v106 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (unsigned short v109, signed short v110, unsigned char v111, unsigned int v112)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned int v115 = 0U;
signed short v114 = 1;
signed char v113 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
