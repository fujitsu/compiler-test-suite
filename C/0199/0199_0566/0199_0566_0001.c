#include <stdlib.h>
extern unsigned int v1 (signed char, unsigned int, unsigned char);
extern unsigned int (*v2) (signed char, unsigned int, unsigned char);
extern signed char v3 (unsigned short, unsigned char, signed int, signed int);
extern signed char (*v4) (unsigned short, unsigned char, signed int, signed int);
extern signed int v5 (signed int, signed int, signed short, unsigned char);
extern signed int (*v6) (signed int, signed int, signed short, unsigned char);
extern signed char v7 (unsigned char, signed char);
extern signed char (*v8) (unsigned char, signed char);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern unsigned short v11 (signed int, unsigned short);
extern unsigned short (*v12) (signed int, unsigned short);
signed short v13 (unsigned short, unsigned int, signed short);
signed short (*v14) (unsigned short, unsigned int, signed short) = v13;
extern signed short v15 (unsigned char, unsigned int);
extern signed short (*v16) (unsigned char, unsigned int);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern unsigned short v21 (signed short, unsigned char, unsigned short, signed short);
extern unsigned short (*v22) (signed short, unsigned char, unsigned short, signed short);
signed short v23 (signed char);
signed short (*v24) (signed char) = v23;
extern signed short v25 (void);
extern signed short (*v26) (void);
extern unsigned short v27 (unsigned short, signed int, signed int, signed int);
extern unsigned short (*v28) (unsigned short, signed int, signed int, signed int);
extern unsigned int v29 (signed short, unsigned short, signed char, signed int);
extern unsigned int (*v30) (signed short, unsigned short, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v49 = -4;
unsigned char v48 = 2;
signed char v47 = 3;

signed short v23 (signed char v50)
{
history[history_index++] = (int)v50;
{
for (;;) {
unsigned char v53 = 3;
signed short v52 = 2;
unsigned short v51 = 5;
trace++;
switch (trace)
{
case 3: 
return 0;
case 7: 
{
signed short v54;
v54 = v25 ();
history[history_index++] = (int)v54;
}
break;
case 13: 
return v52;
default: abort ();
}
}
}
}

signed short v13 (unsigned short v55, unsigned int v56, signed short v57)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
signed short v60 = 0;
unsigned short v59 = 5;
unsigned int v58 = 5U;
trace++;
switch (trace)
{
case 9: 
{
signed short v61;
unsigned short v62;
signed char v63;
signed int v64;
unsigned int v65;
v61 = v60 + v60;
v62 = v55 + v59;
v63 = 2 + 1;
v64 = -3 + 1;
v65 = v29 (v61, v62, v63, v64);
history[history_index++] = (int)v65;
}
break;
case 11: 
return v60;
default: abort ();
}
}
}
}
