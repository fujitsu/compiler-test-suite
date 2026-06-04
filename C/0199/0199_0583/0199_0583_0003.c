#include <stdlib.h>
extern signed short v1 (unsigned short, unsigned short);
extern signed short (*v2) (unsigned short, unsigned short);
signed char v3 (signed int, unsigned int, signed short);
signed char (*v4) (signed int, unsigned int, signed short) = v3;
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
void v7 (signed char, signed short, unsigned short, unsigned short);
void (*v8) (signed char, signed short, unsigned short, unsigned short) = v7;
extern signed int v9 (signed short);
extern signed int (*v10) (signed short);
extern unsigned char v11 (signed short);
extern unsigned char (*v12) (signed short);
extern unsigned int v13 (signed int);
extern unsigned int (*v14) (signed int);
extern signed short v15 (signed char);
extern signed short (*v16) (signed char);
unsigned short v17 (unsigned char);
unsigned short (*v18) (unsigned char) = v17;
extern signed int v19 (unsigned int);
extern signed int (*v20) (unsigned int);
extern signed int v23 (void);
extern signed int (*v24) (void);
signed short v25 (void);
signed short (*v26) (void) = v25;
extern signed short v27 (void);
extern signed short (*v28) (void);
extern unsigned char v29 (unsigned char, signed short, signed char);
extern unsigned char (*v30) (unsigned char, signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v91 = 3;
unsigned int v90 = 6U;
signed char v89 = -2;

signed short v25 (void)
{
{
for (;;) {
signed int v94 = -2;
unsigned char v93 = 0;
unsigned int v92 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (unsigned char v95)
{
history[history_index++] = (int)v95;
{
for (;;) {
signed char v98 = -4;
signed int v97 = 0;
signed int v96 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (signed char v99, signed short v100, unsigned short v101, unsigned short v102)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
unsigned int v105 = 7U;
signed short v104 = -1;
unsigned int v103 = 2U;
trace++;
switch (trace)
{
case 10: 
return;
default: abort ();
}
}
}
}

signed char v3 (signed int v106, unsigned int v107, signed short v108)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned int v111 = 2U;
unsigned int v110 = 3U;
signed char v109 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
