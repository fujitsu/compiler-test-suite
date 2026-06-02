#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned short v3 (unsigned int, unsigned char, unsigned int);
extern unsigned short (*v4) (unsigned int, unsigned char, unsigned int);
extern signed int v5 (signed short, signed char);
extern signed int (*v6) (signed short, signed char);
unsigned short v7 (signed int, unsigned int, signed int, signed int);
unsigned short (*v8) (signed int, unsigned int, signed int, signed int) = v7;
extern void v9 (unsigned short);
extern void (*v10) (unsigned short);
extern void v11 (void);
extern void (*v12) (void);
void v13 (unsigned int, signed short);
void (*v14) (unsigned int, signed short) = v13;
extern signed char v15 (signed short, unsigned int, unsigned short);
extern signed char (*v16) (signed short, unsigned int, unsigned short);
unsigned int v17 (unsigned int, unsigned char);
unsigned int (*v18) (unsigned int, unsigned char) = v17;
extern signed int v19 (signed char);
extern signed int (*v20) (signed char);
signed int v23 (unsigned short, unsigned short);
signed int (*v24) (unsigned short, unsigned short) = v23;
extern signed int v25 (void);
extern signed int (*v26) (void);
extern void v27 (signed int, unsigned char, unsigned char);
extern void (*v28) (signed int, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v95 = 6;
unsigned int v94 = 3U;
signed int v93 = 3;

signed int v23 (unsigned short v96, unsigned short v97)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed char v100 = -2;
unsigned char v99 = 5;
unsigned short v98 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (unsigned int v101, unsigned char v102)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed short v105 = 1;
unsigned char v104 = 1;
unsigned int v103 = 7U;
trace++;
switch (trace)
{
case 10: 
return v103;
default: abort ();
}
}
}
}

void v13 (unsigned int v106, signed short v107)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
signed char v110 = 2;
signed char v109 = -1;
signed int v108 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed int v111, unsigned int v112, signed int v113, signed int v114)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
signed int v117 = -2;
unsigned short v116 = 2;
signed char v115 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
