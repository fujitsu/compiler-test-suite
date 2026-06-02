#include <stdlib.h>
extern signed char v1 (signed char, signed int);
extern signed char (*v2) (signed char, signed int);
extern signed int v3 (signed char);
extern signed int (*v4) (signed char);
unsigned short v5 (void);
unsigned short (*v6) (void) = v5;
extern signed char v7 (signed short, unsigned int, signed short, signed short);
extern signed char (*v8) (signed short, unsigned int, signed short, signed short);
extern signed int v9 (unsigned char, unsigned int);
extern signed int (*v10) (unsigned char, unsigned int);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern signed short v13 (unsigned char);
extern signed short (*v14) (unsigned char);
extern signed short v15 (unsigned char, signed int, unsigned int);
extern signed short (*v16) (unsigned char, signed int, unsigned int);
extern signed int v17 (signed char, signed short);
extern signed int (*v18) (signed char, signed short);
extern unsigned int v19 (signed int);
extern unsigned int (*v20) (signed int);
extern signed int v21 (void);
extern signed int (*v22) (void);
unsigned int v23 (signed short, unsigned int, unsigned short, signed int);
unsigned int (*v24) (signed short, unsigned int, unsigned short, signed int) = v23;
extern unsigned char v25 (unsigned char, unsigned short, unsigned short, signed char);
extern unsigned char (*v26) (unsigned char, unsigned short, unsigned short, signed char);
unsigned short v27 (signed int, unsigned int, unsigned int);
unsigned short (*v28) (signed int, unsigned int, unsigned int) = v27;
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v89 = 0;
unsigned int v88 = 0U;
unsigned int v87 = 5U;

unsigned short v27 (signed int v90, unsigned int v91, unsigned int v92)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed int v95 = -2;
signed int v94 = 1;
unsigned int v93 = 4U;
trace++;
switch (trace)
{
case 4: 
return 0;
case 6: 
return 4;
default: abort ();
}
}
}
}

unsigned int v23 (signed short v96, unsigned int v97, unsigned short v98, signed int v99)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
signed char v102 = -1;
unsigned short v101 = 1;
unsigned int v100 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (void)
{
{
for (;;) {
unsigned short v105 = 4;
signed char v104 = -1;
unsigned char v103 = 2;
trace++;
switch (trace)
{
case 8: 
{
signed int v106;
unsigned int v107;
v106 = 3 + 3;
v107 = v19 (v106);
history[history_index++] = (int)v107;
}
break;
case 10: 
return v105;
default: abort ();
}
}
}
}
