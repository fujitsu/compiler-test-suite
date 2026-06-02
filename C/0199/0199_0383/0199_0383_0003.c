#include <stdlib.h>
extern signed short v3 (signed short);
extern signed short (*v4) (signed short);
unsigned int v5 (void);
unsigned int (*v6) (void) = v5;
extern unsigned short v7 (signed short, unsigned int, unsigned char, unsigned int);
extern unsigned short (*v8) (signed short, unsigned int, unsigned char, unsigned int);
unsigned int v9 (void);
unsigned int (*v10) (void) = v9;
unsigned short v11 (signed char, unsigned char, unsigned int);
unsigned short (*v12) (signed char, unsigned char, unsigned int) = v11;
extern unsigned int v13 (signed short, signed int, signed char, unsigned int);
extern unsigned int (*v14) (signed short, signed int, signed char, unsigned int);
extern unsigned int v15 (unsigned char, unsigned char);
extern unsigned int (*v16) (unsigned char, unsigned char);
extern signed char v17 (signed short, signed char);
extern signed char (*v18) (signed short, signed char);
signed short v19 (unsigned char, unsigned short);
signed short (*v20) (unsigned char, unsigned short) = v19;
extern unsigned char v21 (signed int, unsigned short, unsigned char, signed char);
extern unsigned char (*v22) (signed int, unsigned short, unsigned char, signed char);
extern signed short v23 (unsigned char, signed int);
extern signed short (*v24) (unsigned char, signed int);
extern void v25 (unsigned short, signed short, unsigned int);
extern void (*v26) (unsigned short, signed short, unsigned int);
extern signed short v27 (unsigned short, signed char, signed char, unsigned char);
extern signed short (*v28) (unsigned short, signed char, signed char, unsigned char);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v102 = 5;
unsigned char v101 = 6;
signed char v100 = -1;

signed short v19 (unsigned char v103, unsigned short v104)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
signed short v107 = 0;
signed short v106 = -1;
signed short v105 = 3;
trace++;
switch (trace)
{
case 11: 
return v107;
default: abort ();
}
}
}
}

unsigned short v11 (signed char v108, unsigned char v109, unsigned int v110)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed char v113 = 2;
unsigned short v112 = 4;
unsigned int v111 = 0U;
trace++;
switch (trace)
{
case 9: 
return v112;
default: abort ();
}
}
}
}

unsigned int v9 (void)
{
{
for (;;) {
unsigned int v116 = 1U;
signed char v115 = -2;
signed short v114 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (void)
{
{
for (;;) {
signed char v119 = 2;
unsigned char v118 = 4;
signed short v117 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
