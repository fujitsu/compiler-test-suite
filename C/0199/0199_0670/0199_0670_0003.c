#include <stdlib.h>
extern unsigned short v1 (signed short);
extern unsigned short (*v2) (signed short);
extern signed short v3 (unsigned short, signed short, unsigned int, signed char);
extern signed short (*v4) (unsigned short, signed short, unsigned int, signed char);
extern signed char v5 (unsigned char);
extern signed char (*v6) (unsigned char);
extern signed short v7 (unsigned short, signed char);
extern signed short (*v8) (unsigned short, signed char);
extern unsigned short v9 (unsigned char, unsigned char, unsigned short);
extern unsigned short (*v10) (unsigned char, unsigned char, unsigned short);
extern signed char v11 (signed short, signed int, signed int, signed short);
extern signed char (*v12) (signed short, signed int, signed int, signed short);
extern unsigned short v13 (unsigned char, unsigned int);
extern unsigned short (*v14) (unsigned char, unsigned int);
extern void v15 (unsigned char, signed int, unsigned short);
extern void (*v16) (unsigned char, signed int, unsigned short);
unsigned char v17 (unsigned short, unsigned int, unsigned char, signed char);
unsigned char (*v18) (unsigned short, unsigned int, unsigned char, signed char) = v17;
extern signed int v19 (unsigned short);
extern signed int (*v20) (unsigned short);
unsigned int v21 (unsigned int, unsigned char, unsigned char);
unsigned int (*v22) (unsigned int, unsigned char, unsigned char) = v21;
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed int v25 (signed int);
extern signed int (*v26) (signed int);
extern unsigned char v27 (unsigned short, signed char);
extern unsigned char (*v28) (unsigned short, signed char);
extern signed int v29 (unsigned int, unsigned char, unsigned short, unsigned char);
extern signed int (*v30) (unsigned int, unsigned char, unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v103 = 1U;
unsigned int v102 = 1U;
signed short v101 = 0;

unsigned int v21 (unsigned int v104, unsigned char v105, unsigned char v106)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
unsigned char v109 = 0;
unsigned short v108 = 4;
unsigned short v107 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (unsigned short v110, unsigned int v111, unsigned char v112, signed char v113)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned short v116 = 0;
unsigned char v115 = 4;
signed char v114 = 1;
trace++;
switch (trace)
{
case 1: 
return v115;
default: abort ();
}
}
}
}
