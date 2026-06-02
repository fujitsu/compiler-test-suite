#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned int, signed short, unsigned int);
extern unsigned int (*v2) (unsigned int, signed short, unsigned int);
extern unsigned char v3 (unsigned char, unsigned short, unsigned char, signed short);
extern unsigned char (*v4) (unsigned char, unsigned short, unsigned char, signed short);
extern unsigned short v5 (signed int);
extern unsigned short (*v6) (signed int);
extern signed int v7 (unsigned short, unsigned int, unsigned int, unsigned char);
extern signed int (*v8) (unsigned short, unsigned int, unsigned int, unsigned char);
extern signed char v9 (unsigned char, unsigned int, signed char);
extern signed char (*v10) (unsigned char, unsigned int, signed char);
unsigned short v11 (unsigned int, unsigned int, signed short, unsigned int);
unsigned short (*v12) (unsigned int, unsigned int, signed short, unsigned int) = v11;
extern signed char v13 (unsigned int, unsigned short);
extern signed char (*v14) (unsigned int, unsigned short);
extern unsigned int v15 (signed short, signed short);
extern unsigned int (*v16) (signed short, signed short);
unsigned short v17 (unsigned int, unsigned short, unsigned char);
unsigned short (*v18) (unsigned int, unsigned short, unsigned char) = v17;
extern unsigned int v19 (unsigned short);
extern unsigned int (*v20) (unsigned short);
extern unsigned short v21 (signed char, signed int);
extern unsigned short (*v22) (signed char, signed int);
extern unsigned short v23 (unsigned short, unsigned char);
extern unsigned short (*v24) (unsigned short, unsigned char);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed char v27 (unsigned char, unsigned int, signed char);
extern signed char (*v28) (unsigned char, unsigned int, signed char);
unsigned int v29 (unsigned char);
unsigned int (*v30) (unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 5U;
unsigned int v32 = 0U;
signed short v31 = 0;

unsigned int v29 (unsigned char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed int v37 = 1;
unsigned int v36 = 2U;
unsigned char v35 = 2;
trace++;
switch (trace)
{
case 5: 
return v36;
case 7: 
return 5U;
case 9: 
return 1U;
default: abort ();
}
}
}
}

unsigned short v17 (unsigned int v38, unsigned short v39, unsigned char v40)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned char v43 = 0;
signed short v42 = 1;
unsigned short v41 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (unsigned int v44, unsigned int v45, signed short v46, unsigned int v47)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed short v50 = 0;
unsigned int v49 = 1U;
unsigned short v48 = 4;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v51;
unsigned int v52;
v51 = v48 - 7;
v52 = v19 (v51);
history[history_index++] = (int)v52;
}
break;
case 11: 
return 2;
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
unsigned int v55;
signed short v56;
unsigned int v57;
unsigned int v58;
v55 = v33 + v33;
v56 = v31 - -1;
v57 = v32 + v32;
v58 = v1 (v55, v56, v57);
history[history_index++] = (int)v58;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
