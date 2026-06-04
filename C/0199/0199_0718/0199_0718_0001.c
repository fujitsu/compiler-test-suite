#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern signed short v3 (unsigned int, signed char);
extern signed short (*v4) (unsigned int, signed char);
extern signed short v5 (unsigned int);
extern signed short (*v6) (unsigned int);
signed short v9 (unsigned short, unsigned int, unsigned int);
signed short (*v10) (unsigned short, unsigned int, unsigned int) = v9;
extern signed short v11 (unsigned char, unsigned char);
extern signed short (*v12) (unsigned char, unsigned char);
extern unsigned int v13 (unsigned char, unsigned int, unsigned char, signed int);
extern unsigned int (*v14) (unsigned char, unsigned int, unsigned char, signed int);
extern signed char v15 (unsigned char, signed int, unsigned int);
extern signed char (*v16) (unsigned char, signed int, unsigned int);
signed char v17 (unsigned char);
signed char (*v18) (unsigned char) = v17;
extern unsigned int v19 (signed int, signed int);
extern unsigned int (*v20) (signed int, signed int);
extern unsigned char v21 (signed short, unsigned int, unsigned int);
extern unsigned char (*v22) (signed short, unsigned int, unsigned int);
extern signed char v23 (unsigned int, signed short, signed int, signed char);
extern signed char (*v24) (unsigned int, signed short, signed int, signed char);
extern unsigned short v25 (unsigned int, unsigned int, unsigned int);
extern unsigned short (*v26) (unsigned int, unsigned int, unsigned int);
unsigned short v27 (void);
unsigned short (*v28) (void) = v27;
extern signed int v29 (unsigned char, unsigned short);
extern signed int (*v30) (unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v52 = 3;
signed int v51 = 3;
signed char v50 = -3;

unsigned short v27 (void)
{
{
for (;;) {
unsigned int v55 = 2U;
unsigned short v54 = 7;
unsigned short v53 = 7;
trace++;
switch (trace)
{
case 6: 
return v53;
case 8: 
return v53;
default: abort ();
}
}
}
}

signed char v17 (unsigned char v56)
{
history[history_index++] = (int)v56;
{
for (;;) {
signed short v59 = -3;
signed int v58 = -1;
signed short v57 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (unsigned short v60, unsigned int v61, unsigned int v62)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned int v65 = 7U;
signed short v64 = 2;
unsigned char v63 = 7;
trace++;
switch (trace)
{
case 2: 
{
unsigned int v66;
unsigned int v67;
unsigned int v68;
unsigned short v69;
v66 = 0U - v62;
v67 = v65 - v61;
v68 = 4U - v61;
v69 = v25 (v66, v67, v68);
history[history_index++] = (int)v69;
}
break;
case 4: 
{
unsigned int v70;
unsigned int v71;
unsigned int v72;
unsigned short v73;
v70 = v61 - v62;
v71 = v61 - v62;
v72 = v62 + 7U;
v73 = v25 (v70, v71, v72);
history[history_index++] = (int)v73;
}
break;
case 10: 
return v64;
default: abort ();
}
}
}
}
