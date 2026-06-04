#include <stdlib.h>
extern signed short v3 (unsigned short, unsigned char);
extern signed short (*v4) (unsigned short, unsigned char);
extern void v5 (unsigned short);
extern void (*v6) (unsigned short);
extern unsigned char v7 (unsigned short, signed char);
extern unsigned char (*v8) (unsigned short, signed char);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern signed int v11 (signed char, signed char, unsigned int);
extern signed int (*v12) (signed char, signed char, unsigned int);
extern unsigned int v13 (signed char);
extern unsigned int (*v14) (signed char);
unsigned char v15 (unsigned short, unsigned int);
unsigned char (*v16) (unsigned short, unsigned int) = v15;
extern signed char v17 (signed char, signed char, unsigned int, signed char);
extern signed char (*v18) (signed char, signed char, unsigned int, signed char);
extern signed int v19 (signed int);
extern signed int (*v20) (signed int);
unsigned short v21 (signed int, signed int, unsigned char);
unsigned short (*v22) (signed int, signed int, unsigned char) = v21;
extern unsigned short v23 (unsigned short, signed int);
extern unsigned short (*v24) (unsigned short, signed int);
static signed char v25 (void);
static signed char (*v26) (void) = v25;
extern signed int v27 (unsigned char);
extern signed int (*v28) (unsigned char);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v90 = -4;
unsigned short v89 = 6;
signed short v88 = 3;

static signed char v25 (void)
{
{
for (;;) {
unsigned short v93 = 5;
unsigned short v92 = 4;
unsigned short v91 = 0;
trace++;
switch (trace)
{
case 5: 
{
signed char v94;
v94 = v29 ();
history[history_index++] = (int)v94;
}
break;
case 7: 
{
signed char v95;
v95 = v29 ();
history[history_index++] = (int)v95;
}
break;
case 13: 
return -3;
default: abort ();
}
}
}
}

unsigned short v21 (signed int v96, signed int v97, unsigned char v98)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
unsigned int v101 = 5U;
unsigned char v100 = 7;
unsigned int v99 = 3U;
trace++;
switch (trace)
{
case 2: 
return 6;
default: abort ();
}
}
}
}

unsigned char v15 (unsigned short v102, unsigned int v103)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
unsigned short v106 = 0;
unsigned short v105 = 1;
unsigned short v104 = 1;
trace++;
switch (trace)
{
case 4: 
{
signed char v107;
v107 = v25 ();
history[history_index++] = (int)v107;
}
break;
case 14: 
return 7;
default: abort ();
}
}
}
}
