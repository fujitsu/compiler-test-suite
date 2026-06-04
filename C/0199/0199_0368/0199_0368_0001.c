#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern signed char v3 (signed short, unsigned int);
extern signed char (*v4) (signed short, unsigned int);
extern signed short v5 (signed char);
extern signed short (*v6) (signed char);
extern signed int v7 (unsigned char);
extern signed int (*v8) (unsigned char);
signed short v9 (unsigned char, unsigned short, unsigned char);
signed short (*v10) (unsigned char, unsigned short, unsigned char) = v9;
extern void v11 (unsigned int);
extern void (*v12) (unsigned int);
extern unsigned int v13 (unsigned char, unsigned int, unsigned char, signed short);
extern unsigned int (*v14) (unsigned char, unsigned int, unsigned char, signed short);
extern unsigned int v15 (signed short, signed int);
extern unsigned int (*v16) (signed short, signed int);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed int v19 (signed int, signed int, signed char, signed int);
extern signed int (*v20) (signed int, signed int, signed char, signed int);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern void v25 (signed short);
extern void (*v26) (signed short);
extern unsigned short v27 (unsigned int, signed int);
extern unsigned short (*v28) (unsigned int, signed int);
signed short v29 (void);
signed short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v45 = 0;
unsigned char v44 = 3;
unsigned short v43 = 3;

signed short v29 (void)
{
{
for (;;) {
signed char v48 = -4;
unsigned short v47 = 6;
unsigned char v46 = 4;
trace++;
switch (trace)
{
case 2: 
return 1;
case 5: 
return 2;
case 7: 
return 2;
case 9: 
return -3;
default: abort ();
}
}
}
}

signed short v9 (unsigned char v49, unsigned short v50, unsigned char v51)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
signed char v54 = 3;
unsigned short v53 = 2;
signed char v52 = -2;
trace++;
switch (trace)
{
case 4: 
{
signed short v55;
v55 = v29 ();
history[history_index++] = (int)v55;
}
break;
case 6: 
{
signed short v56;
v56 = v29 ();
history[history_index++] = (int)v56;
}
break;
case 8: 
{
signed short v57;
v57 = v29 ();
history[history_index++] = (int)v57;
}
break;
case 10: 
return -3;
default: abort ();
}
}
}
}
