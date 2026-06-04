#include <stdlib.h>
extern void v1 (unsigned short, signed char);
extern void (*v2) (unsigned short, signed char);
extern signed int v3 (unsigned char, signed short, unsigned short);
extern signed int (*v4) (unsigned char, signed short, unsigned short);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern signed char v7 (void);
extern signed char (*v8) (void);
unsigned int v9 (unsigned int, unsigned char);
unsigned int (*v10) (unsigned int, unsigned char) = v9;
signed short v11 (unsigned int, signed int, signed int, signed short);
signed short (*v12) (unsigned int, signed int, signed int, signed short) = v11;
extern unsigned int v13 (signed char, signed short, signed char, signed int);
extern unsigned int (*v14) (signed char, signed short, signed char, signed int);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned int v17 (signed int, unsigned short, signed char);
extern unsigned int (*v18) (signed int, unsigned short, signed char);
extern unsigned char v21 (signed short, signed char, signed short, unsigned short);
extern unsigned char (*v22) (signed short, signed char, signed short, unsigned short);
unsigned int v23 (unsigned short);
unsigned int (*v24) (unsigned short) = v23;
extern signed int v25 (signed int, signed int);
extern signed int (*v26) (signed int, signed int);
extern void v27 (void);
extern void (*v28) (void);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v50 = 3;
unsigned int v49 = 3U;
signed int v48 = 1;

unsigned int v23 (unsigned short v51)
{
history[history_index++] = (int)v51;
{
for (;;) {
unsigned short v54 = 7;
unsigned short v53 = 5;
signed short v52 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (unsigned int v55, signed int v56, signed int v57, signed short v58)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
unsigned char v61 = 5;
unsigned int v60 = 2U;
signed char v59 = 0;
trace++;
switch (trace)
{
case 7: 
return -3;
default: abort ();
}
}
}
}

unsigned int v9 (unsigned int v62, unsigned char v63)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
signed char v66 = 2;
signed char v65 = -2;
signed char v64 = 1;
trace++;
switch (trace)
{
case 2: 
{
signed int v67;
unsigned short v68;
signed char v69;
unsigned int v70;
v67 = 1 - -3;
v68 = 3 - 1;
v69 = v66 + v66;
v70 = v17 (v67, v68, v69);
history[history_index++] = (int)v70;
}
break;
case 4: 
return 7U;
case 9: 
{
signed int v71;
unsigned short v72;
signed char v73;
unsigned int v74;
v71 = 2 - -4;
v72 = 4 - 0;
v73 = 1 + -1;
v74 = v17 (v71, v72, v73);
history[history_index++] = (int)v74;
}
break;
case 13: 
return v62;
default: abort ();
}
}
}
}
