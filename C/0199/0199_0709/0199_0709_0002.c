#include <stdlib.h>
extern signed int v3 (signed short, unsigned int, unsigned char);
extern signed int (*v4) (signed short, unsigned int, unsigned char);
extern unsigned char v5 (unsigned char, unsigned short, unsigned short);
extern unsigned char (*v6) (unsigned char, unsigned short, unsigned short);
extern unsigned short v7 (unsigned short);
extern unsigned short (*v8) (unsigned short);
void v9 (signed char, signed int, unsigned int);
void (*v10) (signed char, signed int, unsigned int) = v9;
extern signed short v11 (unsigned int, signed short, signed int, unsigned char);
extern signed short (*v12) (unsigned int, signed short, signed int, unsigned char);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned int v17 (unsigned char, unsigned int, unsigned short, signed char);
extern unsigned int (*v18) (unsigned char, unsigned int, unsigned short, signed char);
extern signed short v19 (signed int, signed char);
extern signed short (*v20) (signed int, signed char);
unsigned short v21 (void);
unsigned short (*v22) (void) = v21;
extern unsigned short v23 (unsigned int, signed short);
extern unsigned short (*v24) (unsigned int, signed short);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
signed int v29 (unsigned int, unsigned short);
signed int (*v30) (unsigned int, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v97 = 0;
signed short v96 = -1;
unsigned int v95 = 5U;

signed int v29 (unsigned int v98, unsigned short v99)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
signed short v102 = 3;
signed int v101 = -3;
unsigned short v100 = 5;
trace++;
switch (trace)
{
case 3: 
return v101;
default: abort ();
}
}
}
}

unsigned short v21 (void)
{
{
for (;;) {
signed int v105 = 2;
signed short v104 = 3;
signed char v103 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed char v106, signed int v107, unsigned int v108)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed short v111 = -2;
unsigned short v110 = 3;
signed char v109 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
