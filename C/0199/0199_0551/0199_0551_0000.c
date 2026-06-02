#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (signed short, signed short, signed short);
extern signed char (*v2) (signed short, signed short, signed short);
unsigned short v3 (unsigned short, signed int, unsigned char);
unsigned short (*v4) (unsigned short, signed int, unsigned char) = v3;
extern unsigned int v5 (signed char, signed int, unsigned int);
extern unsigned int (*v6) (signed char, signed int, unsigned int);
extern unsigned char v7 (signed short, unsigned int, unsigned int);
extern unsigned char (*v8) (signed short, unsigned int, unsigned int);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern signed int v15 (unsigned char, signed int, unsigned char);
extern signed int (*v16) (unsigned char, signed int, unsigned char);
extern unsigned int v19 (signed short);
extern unsigned int (*v20) (signed short);
unsigned short v21 (unsigned short, signed short, unsigned char);
unsigned short (*v22) (unsigned short, signed short, unsigned char) = v21;
extern unsigned int v23 (signed char, unsigned char, signed char, unsigned int);
extern unsigned int (*v24) (signed char, unsigned char, signed char, unsigned int);
extern unsigned int v25 (signed short, signed char, signed char);
extern unsigned int (*v26) (signed short, signed char, signed char);
extern unsigned short v27 (unsigned short, signed short);
extern unsigned short (*v28) (unsigned short, signed short);
extern unsigned char v29 (signed int, signed short);
extern unsigned char (*v30) (signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 7;
signed char v32 = 2;
signed int v31 = -2;

unsigned short v21 (unsigned short v34, signed short v35, unsigned char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed char v39 = -3;
unsigned int v38 = 4U;
signed int v37 = -2;
trace++;
switch (trace)
{
case 6: 
{
signed char v40;
signed int v41;
unsigned int v42;
unsigned int v43;
v40 = v39 - v39;
v41 = 3 + v37;
v42 = v38 - v38;
v43 = v5 (v40, v41, v42);
history[history_index++] = (int)v43;
}
break;
case 8: 
{
signed char v44;
signed int v45;
unsigned int v46;
unsigned int v47;
v44 = 2 - v39;
v45 = -4 + 2;
v46 = 6U - v38;
v47 = v5 (v44, v45, v46);
history[history_index++] = (int)v47;
}
break;
case 10: 
{
signed char v48;
signed int v49;
unsigned int v50;
unsigned int v51;
v48 = v39 + -2;
v49 = v37 - v37;
v50 = v38 - 5U;
v51 = v5 (v48, v49, v50);
history[history_index++] = (int)v51;
}
break;
case 12: 
return 6;
case 14: 
return 6;
default: abort ();
}
}
}
}

unsigned short v3 (unsigned short v52, signed int v53, unsigned char v54)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
unsigned short v57 = 3;
signed int v56 = 1;
unsigned char v55 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed short v60;
signed short v61;
signed short v62;
signed char v63;
v60 = 2 + 1;
v61 = -2 - -3;
v62 = -4 + 0;
v63 = v1 (v60, v61, v62);
history[history_index++] = (int)v63;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
