#include <stdlib.h>
extern signed char v1 (signed int);
extern signed char (*v2) (signed int);
extern unsigned int v3 (signed int, signed int, signed short);
extern unsigned int (*v4) (signed int, signed int, signed short);
extern unsigned char v5 (unsigned short, unsigned short);
extern unsigned char (*v6) (unsigned short, unsigned short);
signed char v7 (signed int, signed short, unsigned int, signed char);
signed char (*v8) (signed int, signed short, unsigned int, signed char) = v7;
extern signed char v9 (unsigned short, signed short, unsigned short, signed int);
extern signed char (*v10) (unsigned short, signed short, unsigned short, signed int);
extern unsigned int v11 (unsigned short, signed short, unsigned int, signed char);
extern unsigned int (*v12) (unsigned short, signed short, unsigned int, signed char);
extern void v13 (unsigned char, signed char);
extern void (*v14) (unsigned char, signed char);
extern unsigned int v15 (signed int);
extern unsigned int (*v16) (signed int);
extern void v17 (unsigned int);
extern void (*v18) (unsigned int);
extern unsigned int v19 (signed short, unsigned int, unsigned int, signed char);
extern unsigned int (*v20) (signed short, unsigned int, unsigned int, signed char);
signed short v21 (unsigned short, unsigned short, signed char);
signed short (*v22) (unsigned short, unsigned short, signed char) = v21;
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned char v25 (unsigned char, unsigned char);
extern unsigned char (*v26) (unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v98 = -4;
signed char v97 = 0;
unsigned int v96 = 3U;

signed short v21 (unsigned short v99, unsigned short v100, signed char v101)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
unsigned int v104 = 6U;
signed short v103 = -1;
signed char v102 = -1;
trace++;
switch (trace)
{
case 5: 
return -3;
default: abort ();
}
}
}
}

signed char v7 (signed int v105, signed short v106, unsigned int v107, signed char v108)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed char v111 = 0;
signed short v110 = 3;
unsigned short v109 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
