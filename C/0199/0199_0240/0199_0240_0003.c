#include <stdlib.h>
extern unsigned int v1 (unsigned short, unsigned int, unsigned char, signed int);
extern unsigned int (*v2) (unsigned short, unsigned int, unsigned char, signed int);
signed char v5 (signed int, unsigned short, unsigned short, unsigned int);
signed char (*v6) (signed int, unsigned short, unsigned short, unsigned int) = v5;
extern unsigned char v7 (signed short, unsigned int, signed char);
extern unsigned char (*v8) (signed short, unsigned int, signed char);
extern void v9 (unsigned short, signed short, unsigned char);
extern void (*v10) (unsigned short, signed short, unsigned char);
extern signed short v11 (unsigned short, signed short);
extern signed short (*v12) (unsigned short, signed short);
extern void v13 (unsigned char, signed short, signed char);
extern void (*v14) (unsigned char, signed short, signed char);
extern void v15 (signed short, unsigned int, unsigned int, unsigned char);
extern void (*v16) (signed short, unsigned int, unsigned int, unsigned char);
extern signed int v17 (unsigned int, signed int);
extern signed int (*v18) (unsigned int, signed int);
extern unsigned char v19 (signed int, signed int);
extern unsigned char (*v20) (signed int, signed int);
signed short v21 (signed char, unsigned char);
signed short (*v22) (signed char, unsigned char) = v21;
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern unsigned char v25 (unsigned char);
extern unsigned char (*v26) (unsigned char);
extern unsigned int v27 (signed char, signed int, unsigned char, signed short);
extern unsigned int (*v28) (signed char, signed int, unsigned char, signed short);
extern signed short v29 (signed char, signed char, signed short, unsigned short);
extern signed short (*v30) (signed char, signed char, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v100 = 7U;
signed short v99 = 1;
signed int v98 = 0;

signed short v21 (signed char v101, unsigned char v102)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
unsigned short v105 = 1;
unsigned char v104 = 7;
signed short v103 = 1;
trace++;
switch (trace)
{
case 11: 
return -2;
default: abort ();
}
}
}
}

signed char v5 (signed int v106, unsigned short v107, unsigned short v108, unsigned int v109)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned short v112 = 1;
signed short v111 = 1;
unsigned short v110 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
