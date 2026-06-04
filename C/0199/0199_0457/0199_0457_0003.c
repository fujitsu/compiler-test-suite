#include <stdlib.h>
unsigned char v3 (signed short, signed short, unsigned char, unsigned int);
unsigned char (*v4) (signed short, signed short, unsigned char, unsigned int) = v3;
unsigned int v5 (unsigned int, signed short, signed short);
unsigned int (*v6) (unsigned int, signed short, signed short) = v5;
extern signed short v7 (unsigned short);
extern signed short (*v8) (unsigned short);
extern signed int v9 (unsigned short, signed short);
extern signed int (*v10) (unsigned short, signed short);
extern unsigned char v11 (unsigned int, unsigned int);
extern unsigned char (*v12) (unsigned int, unsigned int);
extern void v13 (signed int);
extern void (*v14) (signed int);
unsigned int v15 (void);
unsigned int (*v16) (void) = v15;
extern unsigned char v17 (signed int);
extern unsigned char (*v18) (signed int);
extern unsigned char v19 (signed int);
extern unsigned char (*v20) (signed int);
extern unsigned short v21 (unsigned char, unsigned char, unsigned char, unsigned char);
extern unsigned short (*v22) (unsigned char, unsigned char, unsigned char, unsigned char);
extern signed char v23 (signed short, signed int, signed char);
extern signed char (*v24) (signed short, signed int, signed char);
signed int v25 (unsigned int);
signed int (*v26) (unsigned int) = v25;
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v96 = -3;
signed short v95 = -1;
signed int v94 = 1;

signed int v25 (unsigned int v97)
{
history[history_index++] = (int)v97;
{
for (;;) {
signed short v100 = 0;
unsigned short v99 = 2;
signed char v98 = -2;
trace++;
switch (trace)
{
case 3: 
return -2;
default: abort ();
}
}
}
}

unsigned int v15 (void)
{
{
for (;;) {
signed short v103 = -2;
unsigned short v102 = 1;
unsigned short v101 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (unsigned int v104, signed short v105, signed short v106)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
unsigned int v109 = 0U;
unsigned int v108 = 1U;
signed char v107 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (signed short v110, signed short v111, unsigned char v112, unsigned int v113)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned int v116 = 1U;
unsigned int v115 = 4U;
signed char v114 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
