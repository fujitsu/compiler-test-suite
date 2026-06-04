#include <stdlib.h>
extern signed char v1 (signed char, signed int, unsigned short);
extern signed char (*v2) (signed char, signed int, unsigned short);
signed int v3 (signed char, unsigned char, unsigned int, unsigned short);
signed int (*v4) (signed char, unsigned char, unsigned int, unsigned short) = v3;
extern signed int v5 (void);
extern signed int (*v6) (void);
extern unsigned int v7 (unsigned short, signed short);
extern unsigned int (*v8) (unsigned short, signed short);
extern unsigned char v9 (unsigned char);
extern unsigned char (*v10) (unsigned char);
extern unsigned int v11 (unsigned int);
extern unsigned int (*v12) (unsigned int);
unsigned short v13 (signed char, unsigned char, unsigned char);
unsigned short (*v14) (signed char, unsigned char, unsigned char) = v13;
extern void v15 (signed short);
extern void (*v16) (signed short);
extern signed short v17 (unsigned short, signed short);
extern signed short (*v18) (unsigned short, signed short);
extern void v19 (unsigned int);
extern void (*v20) (unsigned int);
void v21 (unsigned int);
void (*v22) (unsigned int) = v21;
extern signed short v23 (unsigned char, signed int, signed int);
extern signed short (*v24) (unsigned char, signed int, signed int);
extern void v25 (void);
extern void (*v26) (void);
extern signed int v27 (signed int);
extern signed int (*v28) (signed int);
extern signed short v29 (signed char, signed short);
extern signed short (*v30) (signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v93 = 4U;
unsigned int v92 = 5U;
unsigned char v91 = 4;

void v21 (unsigned int v94)
{
history[history_index++] = (int)v94;
{
for (;;) {
signed short v97 = 3;
signed short v96 = -2;
signed short v95 = -3;
trace++;
switch (trace)
{
case 3: 
return;
default: abort ();
}
}
}
}

unsigned short v13 (signed char v98, unsigned char v99, unsigned char v100)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed char v103 = -1;
unsigned char v102 = 1;
signed short v101 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed char v104, unsigned char v105, unsigned int v106, unsigned short v107)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
unsigned int v110 = 2U;
signed char v109 = 2;
unsigned short v108 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
