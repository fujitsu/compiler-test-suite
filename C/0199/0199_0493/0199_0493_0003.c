#include <stdlib.h>
signed char v1 (signed char, unsigned int, unsigned int, signed short);
signed char (*v2) (signed char, unsigned int, unsigned int, signed short) = v1;
void v3 (void);
void (*v4) (void) = v3;
extern signed short v5 (signed char, unsigned short);
extern signed short (*v6) (signed char, unsigned short);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern signed char v9 (unsigned char, unsigned char, signed short);
extern signed char (*v10) (unsigned char, unsigned char, signed short);
extern signed short v11 (signed short);
extern signed short (*v12) (signed short);
extern void v13 (signed int, signed short, signed char, unsigned int);
extern void (*v14) (signed int, signed short, signed char, unsigned int);
extern unsigned short v15 (signed short, signed int);
extern unsigned short (*v16) (signed short, signed int);
extern void v17 (void);
extern void (*v18) (void);
signed char v19 (unsigned int, signed char, unsigned int, signed short);
signed char (*v20) (unsigned int, signed char, unsigned int, signed short) = v19;
signed char v21 (void);
signed char (*v22) (void) = v21;
extern unsigned short v23 (unsigned char);
extern unsigned short (*v24) (unsigned char);
extern signed char v25 (unsigned int, unsigned int);
extern signed char (*v26) (unsigned int, unsigned int);
extern signed short v27 (unsigned char, unsigned char, unsigned short);
extern signed short (*v28) (unsigned char, unsigned char, unsigned short);
extern signed short v29 (unsigned int, signed char, unsigned char);
extern signed short (*v30) (unsigned int, signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v92 = -3;
signed char v91 = 0;
unsigned int v90 = 3U;

signed char v21 (void)
{
{
for (;;) {
unsigned short v95 = 1;
signed int v94 = -1;
unsigned char v93 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (unsigned int v96, signed char v97, unsigned int v98, signed short v99)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned int v102 = 6U;
signed short v101 = 1;
unsigned char v100 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (void)
{
{
for (;;) {
unsigned short v105 = 1;
signed int v104 = -1;
signed short v103 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (signed char v106, unsigned int v107, unsigned int v108, signed short v109)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned int v112 = 4U;
unsigned int v111 = 2U;
unsigned short v110 = 1;
trace++;
switch (trace)
{
case 0: 
{
v17 ();
}
break;
case 18: 
return v106;
default: abort ();
}
}
}
}
