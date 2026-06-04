#include <stdlib.h>
signed int v1 (void);
signed int (*v2) (void) = v1;
extern signed int v3 (signed short);
extern signed int (*v4) (signed short);
unsigned int v5 (unsigned char);
unsigned int (*v6) (unsigned char) = v5;
extern unsigned int v7 (unsigned char, signed int, signed char, unsigned short);
extern unsigned int (*v8) (unsigned char, signed int, signed char, unsigned short);
extern signed char v9 (signed short);
extern signed char (*v10) (signed short);
extern signed int v11 (unsigned char);
extern signed int (*v12) (unsigned char);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern void v15 (signed short);
extern void (*v16) (signed short);
extern unsigned char v17 (unsigned short);
extern unsigned char (*v18) (unsigned short);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed char v21 (signed short, signed short);
extern signed char (*v22) (signed short, signed short);
signed short v23 (signed short, signed char, unsigned int);
signed short (*v24) (signed short, signed char, unsigned int) = v23;
unsigned int v25 (signed char, unsigned short, unsigned short);
unsigned int (*v26) (signed char, unsigned short, unsigned short) = v25;
extern signed short v27 (unsigned char, unsigned int);
extern signed short (*v28) (unsigned char, unsigned int);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v50 = 3;
unsigned char v49 = 5;
signed int v48 = 3;

unsigned int v25 (signed char v51, unsigned short v52, unsigned short v53)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
unsigned int v56 = 1U;
unsigned int v55 = 1U;
signed char v54 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (signed short v57, signed char v58, unsigned int v59)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
signed short v62 = 0;
signed char v61 = 3;
unsigned int v60 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (unsigned char v63)
{
history[history_index++] = (int)v63;
{
for (;;) {
signed short v66 = -1;
signed char v65 = 3;
signed char v64 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (void)
{
{
for (;;) {
signed char v69 = 3;
unsigned char v68 = 4;
unsigned short v67 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed short v70;
v70 = 2 - 0;
v15 (v70);
}
break;
case 2: 
return -4;
case 3: 
{
signed short v71;
v71 = 1 - -1;
v15 (v71);
}
break;
case 5: 
return -4;
case 6: 
{
signed short v72;
signed short v73;
signed char v74;
v72 = 0 + -1;
v73 = -2 + 2;
v74 = v21 (v72, v73);
history[history_index++] = (int)v74;
}
break;
case 8: 
{
unsigned char v75;
unsigned int v76;
signed short v77;
v75 = 4 + v68;
v76 = 0U - 7U;
v77 = v27 (v75, v76);
history[history_index++] = (int)v77;
}
break;
case 14: 
return -2;
default: abort ();
}
}
}
}
