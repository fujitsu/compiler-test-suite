#include <stdlib.h>
extern unsigned short v3 (unsigned int, unsigned short, signed int, signed short);
extern unsigned short (*v4) (unsigned int, unsigned short, signed int, signed short);
unsigned short v5 (unsigned char);
unsigned short (*v6) (unsigned char) = v5;
extern unsigned int v7 (unsigned short, signed char, unsigned int);
extern unsigned int (*v8) (unsigned short, signed char, unsigned int);
extern unsigned int v9 (signed int, unsigned short);
extern unsigned int (*v10) (signed int, unsigned short);
extern unsigned short v11 (signed short, unsigned int);
extern unsigned short (*v12) (signed short, unsigned int);
signed int v13 (unsigned int, signed int);
signed int (*v14) (unsigned int, signed int) = v13;
extern unsigned char v15 (signed int, signed int, signed int);
extern unsigned char (*v16) (signed int, signed int, signed int);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern signed int v19 (unsigned short, signed short);
extern signed int (*v20) (unsigned short, signed short);
extern signed int v21 (void);
extern signed int (*v22) (void);
signed int v23 (void);
signed int (*v24) (void) = v23;
extern signed int v25 (signed char);
extern signed int (*v26) (signed char);
extern unsigned short v27 (signed short);
extern unsigned short (*v28) (signed short);
unsigned int v29 (void);
unsigned int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v100 = -3;
signed int v99 = -4;
signed char v98 = -4;

unsigned int v29 (void)
{
{
for (;;) {
signed short v103 = 0;
unsigned char v102 = 2;
signed char v101 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v23 (void)
{
{
for (;;) {
unsigned short v106 = 3;
unsigned char v105 = 0;
unsigned short v104 = 2;
trace++;
switch (trace)
{
case 11: 
return -3;
default: abort ();
}
}
}
}

signed int v13 (unsigned int v107, signed int v108)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed char v111 = 1;
unsigned short v110 = 2;
signed short v109 = 1;
trace++;
switch (trace)
{
case 1: 
return v108;
default: abort ();
}
}
}
}

unsigned short v5 (unsigned char v112)
{
history[history_index++] = (int)v112;
{
for (;;) {
signed char v115 = -4;
unsigned int v114 = 2U;
unsigned short v113 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
