#include <stdlib.h>
extern signed char v3 (signed int, unsigned char, unsigned char);
extern signed char (*v4) (signed int, unsigned char, unsigned char);
extern signed char v5 (unsigned int);
extern signed char (*v6) (unsigned int);
extern signed char v7 (unsigned short, signed int);
extern signed char (*v8) (unsigned short, signed int);
extern signed short v9 (signed char, signed int);
extern signed short (*v10) (signed char, signed int);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
unsigned int v13 (void);
unsigned int (*v14) (void) = v13;
extern void v15 (void);
extern void (*v16) (void);
extern void v17 (void);
extern void (*v18) (void);
extern unsigned char v19 (signed char, signed char, unsigned int);
extern unsigned char (*v20) (signed char, signed char, unsigned int);
extern signed char v21 (signed int, signed short, signed int, signed int);
extern signed char (*v22) (signed int, signed short, signed int, signed int);
signed char v23 (unsigned short);
signed char (*v24) (unsigned short) = v23;
extern signed short v25 (void);
extern signed short (*v26) (void);
extern unsigned short v27 (signed int, unsigned short);
extern unsigned short (*v28) (signed int, unsigned short);
static unsigned int v29 (signed int, signed int, signed short);
static unsigned int (*v30) (signed int, signed int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v57 = 0;
unsigned short v56 = 6;
unsigned short v55 = 5;

static unsigned int v29 (signed int v58, signed int v59, signed short v60)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
unsigned char v63 = 3;
unsigned short v62 = 4;
signed char v61 = -4;
trace++;
switch (trace)
{
case 7: 
return 7U;
case 9: 
return 7U;
case 11: 
return 2U;
default: abort ();
}
}
}
}

signed char v23 (unsigned short v64)
{
history[history_index++] = (int)v64;
{
for (;;) {
unsigned short v67 = 1;
signed short v66 = -4;
unsigned short v65 = 1;
trace++;
switch (trace)
{
case 6: 
{
signed int v68;
signed int v69;
signed short v70;
unsigned int v71;
v68 = 3 - 1;
v69 = -4 + 1;
v70 = v66 - -1;
v71 = v29 (v68, v69, v70);
history[history_index++] = (int)v71;
}
break;
case 8: 
{
signed int v72;
signed int v73;
signed short v74;
unsigned int v75;
v72 = -1 - 3;
v73 = 2 - 0;
v74 = v66 - 2;
v75 = v29 (v72, v73, v74);
history[history_index++] = (int)v75;
}
break;
case 10: 
{
signed int v76;
signed int v77;
signed short v78;
unsigned int v79;
v76 = -3 + -3;
v77 = -1 - 1;
v78 = v66 - -4;
v79 = v29 (v76, v77, v78);
history[history_index++] = (int)v79;
}
break;
case 12: 
return -4;
default: abort ();
}
}
}
}

unsigned int v13 (void)
{
{
for (;;) {
unsigned int v82 = 5U;
signed short v81 = 1;
signed short v80 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
