#include <stdlib.h>
extern signed int v1 (unsigned short, signed char);
extern signed int (*v2) (unsigned short, signed char);
extern void v3 (unsigned short, signed int);
extern void (*v4) (unsigned short, signed int);
extern signed int v5 (unsigned short, signed short, unsigned char, signed short);
extern signed int (*v6) (unsigned short, signed short, unsigned char, signed short);
extern signed short v7 (unsigned char, unsigned char);
extern signed short (*v8) (unsigned char, unsigned char);
extern void v9 (unsigned char, unsigned int, unsigned short, unsigned char);
extern void (*v10) (unsigned char, unsigned int, unsigned short, unsigned char);
extern void v11 (signed short, unsigned int);
extern void (*v12) (signed short, unsigned int);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern void v17 (unsigned short, unsigned short, signed short);
extern void (*v18) (unsigned short, unsigned short, signed short);
signed int v19 (signed char, signed int, unsigned char);
signed int (*v20) (signed char, signed int, unsigned char) = v19;
unsigned char v21 (unsigned short, unsigned short, unsigned int, signed char);
unsigned char (*v22) (unsigned short, unsigned short, unsigned int, signed char) = v21;
extern signed char v23 (unsigned int);
extern signed char (*v24) (unsigned int);
extern signed char v25 (signed char, unsigned int, signed short, signed char);
extern signed char (*v26) (signed char, unsigned int, signed short, signed char);
extern unsigned int v27 (signed int, signed char, unsigned char);
extern unsigned int (*v28) (signed int, signed char, unsigned char);
extern unsigned char v29 (unsigned short, unsigned int, unsigned char);
extern unsigned char (*v30) (unsigned short, unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v104 = 1;
signed int v103 = -1;
unsigned int v102 = 7U;

unsigned char v21 (unsigned short v105, unsigned short v106, unsigned int v107, signed char v108)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed short v111 = -3;
signed char v110 = -2;
unsigned short v109 = 5;
trace++;
switch (trace)
{
case 3: 
return 0;
case 11: 
return 3;
default: abort ();
}
}
}
}

signed int v19 (signed char v112, signed int v113, unsigned char v114)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
signed char v117 = 2;
signed short v116 = -4;
signed int v115 = 1;
trace++;
switch (trace)
{
case 1: 
return v115;
case 8: 
return 0;
default: abort ();
}
}
}
}
