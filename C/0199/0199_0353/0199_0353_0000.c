#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned int, signed int);
extern unsigned char (*v2) (unsigned int, signed int);
extern signed short v3 (signed short, unsigned char, unsigned int, signed char);
extern signed short (*v4) (signed short, unsigned char, unsigned int, signed char);
extern signed int v5 (unsigned int, unsigned char, signed int, signed char);
extern signed int (*v6) (unsigned int, unsigned char, signed int, signed char);
extern signed char v7 (unsigned short, unsigned char, unsigned int, unsigned char);
extern signed char (*v8) (unsigned short, unsigned char, unsigned int, unsigned char);
extern unsigned int v9 (signed short, signed char, unsigned int, unsigned int);
extern unsigned int (*v10) (signed short, signed char, unsigned int, unsigned int);
unsigned char v11 (unsigned int, unsigned char);
unsigned char (*v12) (unsigned int, unsigned char) = v11;
unsigned short v13 (signed char, unsigned char, unsigned short, signed int);
unsigned short (*v14) (signed char, unsigned char, unsigned short, signed int) = v13;
extern unsigned char v15 (unsigned short, unsigned short, signed char);
extern unsigned char (*v16) (unsigned short, unsigned short, signed char);
extern signed short v17 (unsigned char);
extern signed short (*v18) (unsigned char);
extern signed int v19 (unsigned char);
extern signed int (*v20) (unsigned char);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned short v23 (signed short, signed short);
extern unsigned short (*v24) (signed short, signed short);
extern unsigned char v25 (unsigned char, signed int, signed short, unsigned short);
extern unsigned char (*v26) (unsigned char, signed int, signed short, unsigned short);
extern unsigned short v27 (unsigned int, signed short, signed short);
extern unsigned short (*v28) (unsigned int, signed short, signed short);
extern void v29 (signed char, signed char, signed char, unsigned short);
extern void (*v30) (signed char, signed char, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -2;
signed short v32 = 3;
unsigned short v31 = 6;

unsigned short v13 (signed char v34, unsigned char v35, unsigned short v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = 1;
unsigned short v39 = 2;
unsigned char v38 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (unsigned int v41, unsigned char v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed short v45 = 0;
unsigned int v44 = 3U;
unsigned short v43 = 2;
trace++;
switch (trace)
{
case 2: 
{
unsigned int v46;
signed short v47;
signed short v48;
unsigned short v49;
v46 = 7U - v41;
v47 = v45 + 0;
v48 = 2 - -3;
v49 = v27 (v46, v47, v48);
history[history_index++] = (int)v49;
}
break;
case 4: 
{
unsigned int v50;
signed short v51;
signed short v52;
unsigned short v53;
v50 = v41 + v41;
v51 = v45 + v45;
v52 = -2 + v45;
v53 = v27 (v50, v51, v52);
history[history_index++] = (int)v53;
}
break;
case 6: 
{
unsigned char v54;
v54 = v21 ();
history[history_index++] = (int)v54;
}
break;
case 9: 
{
unsigned int v55;
signed short v56;
signed short v57;
unsigned short v58;
v55 = v44 - v44;
v56 = v45 - -1;
v57 = -4 + 3;
v58 = v27 (v55, v56, v57);
history[history_index++] = (int)v58;
}
break;
case 11: 
return v42;
case 14: 
return v42;
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
unsigned int v61;
signed int v62;
unsigned char v63;
v61 = 3U - 3U;
v62 = 0 - -1;
v63 = v1 (v61, v62);
history[history_index++] = (int)v63;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
