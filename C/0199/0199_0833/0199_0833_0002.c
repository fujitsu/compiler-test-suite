#include <stdlib.h>
extern unsigned int v3 (signed int, unsigned int, signed int, signed char);
extern unsigned int (*v4) (signed int, unsigned int, signed int, signed char);
extern unsigned char v5 (unsigned short, unsigned short, signed int);
extern unsigned char (*v6) (unsigned short, unsigned short, signed int);
extern signed int v7 (unsigned char, unsigned char, signed char, unsigned char);
extern signed int (*v8) (unsigned char, unsigned char, signed char, unsigned char);
extern unsigned int v11 (signed int, unsigned int, unsigned int);
extern unsigned int (*v12) (signed int, unsigned int, unsigned int);
extern signed short v13 (unsigned int, signed char, unsigned int, unsigned short);
extern signed short (*v14) (unsigned int, signed char, unsigned int, unsigned short);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern unsigned int v17 (unsigned char, signed char, signed char, signed short);
extern unsigned int (*v18) (unsigned char, signed char, signed char, signed short);
extern unsigned char v19 (signed int, unsigned short);
extern unsigned char (*v20) (signed int, unsigned short);
extern unsigned short v21 (unsigned char, unsigned int, unsigned int, signed char);
extern unsigned short (*v22) (unsigned char, unsigned int, unsigned int, signed char);
extern unsigned int v23 (signed short, unsigned char, unsigned int);
extern unsigned int (*v24) (signed short, unsigned char, unsigned int);
unsigned short v25 (unsigned int, unsigned char);
unsigned short (*v26) (unsigned int, unsigned char) = v25;
unsigned short v27 (signed int, signed char);
unsigned short (*v28) (signed int, signed char) = v27;
extern unsigned short v29 (signed short);
extern unsigned short (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v113 = 2;
signed char v112 = 1;
unsigned short v111 = 3;

unsigned short v27 (signed int v114, signed char v115)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
signed int v118 = 0;
signed int v117 = 1;
unsigned short v116 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v25 (unsigned int v119, unsigned char v120)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
unsigned int v123 = 0U;
unsigned short v122 = 6;
signed short v121 = -2;
trace++;
switch (trace)
{
case 4: 
return 3;
default: abort ();
}
}
}
}
