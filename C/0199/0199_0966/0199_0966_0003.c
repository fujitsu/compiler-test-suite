#include <stdlib.h>
extern signed int v1 (signed char, unsigned int, signed short, signed short);
extern signed int (*v2) (signed char, unsigned int, signed short, signed short);
extern signed char v3 (signed char);
extern signed char (*v4) (signed char);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern unsigned short v7 (signed short, signed int, unsigned char);
extern unsigned short (*v8) (signed short, signed int, unsigned char);
unsigned char v9 (void);
unsigned char (*v10) (void) = v9;
extern unsigned int v11 (unsigned char, unsigned int, unsigned char, unsigned short);
extern unsigned int (*v12) (unsigned char, unsigned int, unsigned char, unsigned short);
extern signed char v13 (signed int, unsigned int);
extern signed char (*v14) (signed int, unsigned int);
extern unsigned char v15 (unsigned int, signed int, signed char);
extern unsigned char (*v16) (unsigned int, signed int, signed char);
signed int v17 (signed int, unsigned int, signed short);
signed int (*v18) (signed int, unsigned int, signed short) = v17;
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned short v21 (unsigned char, signed int);
extern unsigned short (*v22) (unsigned char, signed int);
signed char v23 (void);
signed char (*v24) (void) = v23;
unsigned int v25 (unsigned char);
unsigned int (*v26) (unsigned char) = v25;
extern unsigned char v27 (signed int, signed char, unsigned int, unsigned int);
extern unsigned char (*v28) (signed int, signed char, unsigned int, unsigned int);
extern unsigned char v29 (unsigned short);
extern unsigned char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v101 = -3;
unsigned char v100 = 4;
signed char v99 = -1;

unsigned int v25 (unsigned char v102)
{
history[history_index++] = (int)v102;
{
for (;;) {
unsigned char v105 = 0;
signed short v104 = 3;
signed char v103 = -4;
trace++;
switch (trace)
{
case 5: 
return 4U;
case 7: 
return 7U;
case 9: 
return 7U;
case 11: 
return 5U;
default: abort ();
}
}
}
}

signed char v23 (void)
{
{
for (;;) {
signed short v108 = -4;
signed short v107 = 1;
signed int v106 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (signed int v109, unsigned int v110, signed short v111)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
signed short v114 = -2;
unsigned char v113 = 6;
signed int v112 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (void)
{
{
for (;;) {
unsigned int v117 = 2U;
unsigned short v116 = 3;
signed char v115 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
