#include <stdlib.h>
signed char v1 (signed char, unsigned char, unsigned int);
signed char (*v2) (signed char, unsigned char, unsigned int) = v1;
extern signed short v3 (unsigned int);
extern signed short (*v4) (unsigned int);
unsigned int v5 (signed short, unsigned short);
unsigned int (*v6) (signed short, unsigned short) = v5;
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern unsigned short v11 (unsigned int, signed short);
extern unsigned short (*v12) (unsigned int, signed short);
signed int v13 (signed short, unsigned int, signed short, unsigned char);
signed int (*v14) (signed short, unsigned int, signed short, unsigned char) = v13;
extern unsigned int v15 (unsigned char, unsigned short, unsigned int, unsigned int);
extern unsigned int (*v16) (unsigned char, unsigned short, unsigned int, unsigned int);
extern unsigned int v19 (unsigned char, unsigned int);
extern unsigned int (*v20) (unsigned char, unsigned int);
extern signed char v21 (unsigned int, signed char, unsigned char);
extern signed char (*v22) (unsigned int, signed char, unsigned char);
extern void v23 (unsigned int, signed int);
extern void (*v24) (unsigned int, signed int);
extern signed short v25 (signed short, unsigned char, signed int, signed char);
extern signed short (*v26) (signed short, unsigned char, signed int, signed char);
extern unsigned int v27 (unsigned short, unsigned short, unsigned short, unsigned short);
extern unsigned int (*v28) (unsigned short, unsigned short, unsigned short, unsigned short);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v50 = 0U;
unsigned short v49 = 5;
unsigned int v48 = 5U;

signed int v13 (signed short v51, unsigned int v52, signed short v53, unsigned char v54)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
signed short v57 = 0;
unsigned short v56 = 2;
signed char v55 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (signed short v58, unsigned short v59)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
signed int v62 = -4;
signed short v61 = -2;
signed char v60 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (signed char v63, unsigned char v64, unsigned int v65)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
unsigned int v68 = 2U;
signed short v67 = 2;
signed short v66 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v69;
signed int v70;
v69 = v68 - 1U;
v70 = 2 - -3;
v23 (v69, v70);
}
break;
case 2: 
return v63;
case 3: 
{
unsigned short v71;
unsigned short v72;
unsigned short v73;
unsigned short v74;
unsigned int v75;
v71 = 5 + 4;
v72 = 1 + 4;
v73 = 2 - 0;
v74 = 0 - 1;
v75 = v27 (v71, v72, v73, v74);
history[history_index++] = (int)v75;
}
break;
case 9: 
{
unsigned int v76;
signed int v77;
v76 = v65 - v68;
v77 = -2 + -3;
v23 (v76, v77);
}
break;
case 11: 
return 2;
default: abort ();
}
}
}
}
