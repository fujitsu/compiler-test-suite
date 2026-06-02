#include <stdlib.h>
extern unsigned short v1 (signed short, signed char, signed char);
extern unsigned short (*v2) (signed short, signed char, signed char);
extern signed short v3 (unsigned char, signed char);
extern signed short (*v4) (unsigned char, signed char);
signed int v5 (signed short);
signed int (*v6) (signed short) = v5;
extern signed char v9 (unsigned short, unsigned char);
extern signed char (*v10) (unsigned short, unsigned char);
extern signed int v11 (unsigned int, signed short, unsigned int, unsigned short);
extern signed int (*v12) (unsigned int, signed short, unsigned int, unsigned short);
extern unsigned short v13 (unsigned int);
extern unsigned short (*v14) (unsigned int);
unsigned char v15 (unsigned int, signed short);
unsigned char (*v16) (unsigned int, signed short) = v15;
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned short v19 (signed int, signed char, signed int);
extern unsigned short (*v20) (signed int, signed char, signed int);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed char v23 (unsigned short, unsigned short);
extern signed char (*v24) (unsigned short, unsigned short);
extern unsigned char v25 (unsigned char, signed char);
extern unsigned char (*v26) (unsigned char, signed char);
extern unsigned int v27 (unsigned char, unsigned short, signed short);
extern unsigned int (*v28) (unsigned char, unsigned short, signed short);
unsigned short v29 (unsigned int);
unsigned short (*v30) (unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v79 = -4;
signed short v78 = 2;
unsigned int v77 = 1U;

unsigned short v29 (unsigned int v80)
{
history[history_index++] = (int)v80;
{
for (;;) {
unsigned int v83 = 7U;
signed int v82 = -4;
signed short v81 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (unsigned int v84, signed short v85)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
unsigned short v88 = 5;
signed char v87 = -4;
signed short v86 = 2;
trace++;
switch (trace)
{
case 5: 
return 1;
case 9: 
return 7;
default: abort ();
}
}
}
}

signed int v5 (signed short v89)
{
history[history_index++] = (int)v89;
{
for (;;) {
signed short v92 = 0;
unsigned short v91 = 4;
signed char v90 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
