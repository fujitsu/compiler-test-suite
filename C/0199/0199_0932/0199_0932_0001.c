#include <stdlib.h>
extern void v1 (unsigned int);
extern void (*v2) (unsigned int);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
void v5 (void);
void (*v6) (void) = v5;
extern signed int v7 (unsigned int, unsigned int, signed short);
extern signed int (*v8) (unsigned int, unsigned int, signed short);
extern unsigned short v9 (unsigned char, signed short, signed short);
extern unsigned short (*v10) (unsigned char, signed short, signed short);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern signed int v13 (void);
extern signed int (*v14) (void);
void v15 (signed short);
void (*v16) (signed short) = v15;
extern unsigned short v17 (unsigned int, unsigned char, signed int, signed char);
extern unsigned short (*v18) (unsigned int, unsigned char, signed int, signed char);
extern signed char v19 (void);
extern signed char (*v20) (void);
signed short v21 (unsigned short, signed int, unsigned short);
signed short (*v22) (unsigned short, signed int, unsigned short) = v21;
extern void v23 (unsigned short);
extern void (*v24) (unsigned short);
signed char v25 (signed short, unsigned short, unsigned int);
signed char (*v26) (signed short, unsigned short, unsigned int) = v25;
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern void v29 (signed char, signed int, signed short, signed short);
extern void (*v30) (signed char, signed int, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v52 = 1;
unsigned short v51 = 1;
unsigned short v50 = 3;

signed char v25 (signed short v53, unsigned short v54, unsigned int v55)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed char v58 = -4;
unsigned short v57 = 4;
signed int v56 = 2;
trace++;
switch (trace)
{
case 3: 
return -2;
case 6: 
return -3;
case 8: 
return v58;
case 10: 
return v58;
default: abort ();
}
}
}
}

signed short v21 (unsigned short v59, signed int v60, unsigned short v61)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
unsigned short v64 = 4;
signed int v63 = -1;
unsigned short v62 = 5;
trace++;
switch (trace)
{
case 5: 
{
signed short v65;
unsigned short v66;
unsigned int v67;
signed char v68;
v65 = 2 - 3;
v66 = v62 - v61;
v67 = 1U + 5U;
v68 = v25 (v65, v66, v67);
history[history_index++] = (int)v68;
}
break;
case 7: 
{
signed short v69;
unsigned short v70;
unsigned int v71;
signed char v72;
v69 = -1 - -3;
v70 = v62 - v64;
v71 = 0U + 5U;
v72 = v25 (v69, v70, v71);
history[history_index++] = (int)v72;
}
break;
case 9: 
{
signed short v73;
unsigned short v74;
unsigned int v75;
signed char v76;
v73 = -3 - 1;
v74 = v61 - v59;
v75 = 1U + 2U;
v76 = v25 (v73, v74, v75);
history[history_index++] = (int)v76;
}
break;
case 11: 
return 3;
default: abort ();
}
}
}
}

void v15 (signed short v77)
{
history[history_index++] = (int)v77;
{
for (;;) {
signed short v80 = -3;
signed char v79 = 3;
signed short v78 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (void)
{
{
for (;;) {
unsigned short v83 = 0;
unsigned short v82 = 6;
unsigned char v81 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
