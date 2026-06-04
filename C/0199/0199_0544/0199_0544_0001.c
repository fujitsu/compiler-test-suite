#include <stdlib.h>
extern unsigned short v1 (signed int, unsigned char, unsigned char, unsigned int);
extern unsigned short (*v2) (signed int, unsigned char, unsigned char, unsigned int);
signed int v3 (void);
signed int (*v4) (void) = v3;
unsigned int v5 (void);
unsigned int (*v6) (void) = v5;
extern unsigned int v7 (signed int, signed short, signed char);
extern unsigned int (*v8) (signed int, signed short, signed char);
extern unsigned char v9 (unsigned short, unsigned int);
extern unsigned char (*v10) (unsigned short, unsigned int);
static signed char v11 (void);
static signed char (*v12) (void) = v11;
extern unsigned short v13 (unsigned int, unsigned int);
extern unsigned short (*v14) (unsigned int, unsigned int);
extern signed short v15 (unsigned char, signed int, unsigned short);
extern signed short (*v16) (unsigned char, signed int, unsigned short);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern signed char v19 (unsigned int, unsigned short);
extern signed char (*v20) (unsigned int, unsigned short);
extern unsigned short v21 (unsigned short, unsigned short);
extern unsigned short (*v22) (unsigned short, unsigned short);
extern signed char v25 (unsigned char, signed char, signed short, signed char);
extern signed char (*v26) (unsigned char, signed char, signed short, signed char);
extern signed short v27 (unsigned short, signed int);
extern signed short (*v28) (unsigned short, signed int);
extern unsigned short v29 (signed int);
extern unsigned short (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v57 = -1;
signed char v56 = 2;
unsigned short v55 = 4;

static signed char v11 (void)
{
{
for (;;) {
signed short v60 = 1;
unsigned short v59 = 7;
signed short v58 = 2;
trace++;
switch (trace)
{
case 10: 
{
unsigned int v61;
unsigned int v62;
unsigned short v63;
v61 = 0U + 3U;
v62 = 5U + 2U;
v63 = v13 (v61, v62);
history[history_index++] = (int)v63;
}
break;
case 12: 
return -1;
default: abort ();
}
}
}
}

unsigned int v5 (void)
{
{
for (;;) {
unsigned char v66 = 3;
unsigned int v65 = 5U;
unsigned short v64 = 7;
trace++;
switch (trace)
{
case 9: 
{
signed char v67;
v67 = v11 ();
history[history_index++] = (int)v67;
}
break;
case 13: 
return 7U;
default: abort ();
}
}
}
}

signed int v3 (void)
{
{
for (;;) {
signed short v70 = -3;
signed short v69 = -2;
signed char v68 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
