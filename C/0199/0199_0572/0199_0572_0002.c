#include <stdlib.h>
extern unsigned int v1 (unsigned short, signed short, unsigned char);
extern unsigned int (*v2) (unsigned short, signed short, unsigned char);
unsigned short v5 (void);
unsigned short (*v6) (void) = v5;
extern signed short v7 (signed int, unsigned char, signed short, unsigned int);
extern signed short (*v8) (signed int, unsigned char, signed short, unsigned int);
extern signed char v9 (unsigned short);
extern signed char (*v10) (unsigned short);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern signed short v13 (signed char, unsigned short, unsigned int, unsigned int);
extern signed short (*v14) (signed char, unsigned short, unsigned int, unsigned int);
extern unsigned char v15 (signed int, signed char, signed short);
extern unsigned char (*v16) (signed int, signed char, signed short);
extern signed short v17 (unsigned int, signed char, signed short, unsigned char);
extern signed short (*v18) (unsigned int, signed char, signed short, unsigned char);
extern unsigned char v19 (signed short, unsigned short, signed int, unsigned char);
extern unsigned char (*v20) (signed short, unsigned short, signed int, unsigned char);
extern unsigned short v23 (signed char, signed short);
extern unsigned short (*v24) (signed char, signed short);
extern unsigned int v25 (signed int, signed int);
extern unsigned int (*v26) (signed int, signed int);
signed short v27 (unsigned int, unsigned int, unsigned short);
signed short (*v28) (unsigned int, unsigned int, unsigned short) = v27;
unsigned char v29 (unsigned short, unsigned short);
unsigned char (*v30) (unsigned short, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v87 = -3;
signed short v86 = 2;
signed short v85 = 1;

unsigned char v29 (unsigned short v88, unsigned short v89)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned int v92 = 3U;
unsigned short v91 = 1;
unsigned int v90 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v27 (unsigned int v93, unsigned int v94, unsigned short v95)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned short v98 = 2;
signed char v97 = 2;
signed int v96 = 1;
trace++;
switch (trace)
{
case 9: 
return -2;
default: abort ();
}
}
}
}

unsigned short v5 (void)
{
{
for (;;) {
signed char v101 = 1;
unsigned short v100 = 0;
unsigned short v99 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
